#!/usr/bin/env python3

import errno
import glob
import os
import platform
import serial.tools.list_ports
import subprocess
import sys
from pprint import pprint
from enum import Enum

class ConsoleTarget(Enum):
    UART = 1
    CDC = 2
    CUSTOM = 3
    NONE = 4

class SdkConfigManager(object):
    @staticmethod
    def GetConsoleTarget(sdkconfig) -> int:
        if 'CONFIG_ESP_CONSOLE_UART' in sdkconfig and \
                sdkconfig['CONFIG_ESP_CONSOLE_UART'] == 'y':
            return ConsoleTarget.UART
        if 'CONFIG_ESP_CONSOLE_CDC' in sdkconfig and \
                sdkconfig['CONFIG_ESP_CONSOLE_CDC'] == 'y':
            return ConsoleTarget.CDC
        if 'CONFIG_ESP_CONSOLE_CUSTOM' in sdkconfig and \
                sdkconfig['CONFIG_ESP_CONSOLE_CUSTOM'] == 'y':
            return ConsoleTarget.CUSTOM
        return ConsoleTarget.NONE

    @staticmethod
    def Load() -> dict:
        values = dict()
        try:
            with open('sdkconfig', 'r') as f:
                for line in f.readlines():
                    line = line.strip()
                    if len(line) < 1:
                        continue
                    if line[0] == '#':
                        continue
                    items = line.split('=')
                    if len(items) != 2:
                        print(line)
                    if items[0] in values:
                        print('Already have: ' + line)
                    values[items[0]] = items[1]
        except FileNotFoundError:
            pass
        return values


class PortEnumerator(object):
    def __init__(self):
        pass

    def GetSerialPorts(self) -> list:
        pass

    def GetModemPorts(self) -> list:
        pass

class WindowsPortEnumerator(PortEnumerator):
    def GetSerialPorts(self) -> list:
        ports = []
        for port in serial.tools.list_ports.comports():
            ports.append(port.device)
        return ports

    def GetModemPorts(self) -> list:
        return self.GetSerialPorts()

class MacPortEnumerator(PortEnumerator):
    ignored = ('/dev/cu.Bluetooth-Incoming-Port')

    @staticmethod
    def __GetSerialWildcard() -> str:
        return '/dev/cu.usbserial-*'

    @staticmethod
    def __GetModemWildcard() -> str:
        return '/dev/cu.usbmodem*'

    @staticmethod
    def __GetMatchingPorts(wildcard) -> list:
        ports = []
        for file in glob.glob(wildcard, recursive=False):
            if file in MacPortEnumerator.ignored:
                continue
            ports.append(file)
        return ports

    def GetSerialPorts(self) -> list:
        return MacPortEnumerator.__GetMatchingPorts(
                MacPortEnumerator.__GetSerialWildcard())

    def GetModemPorts(self) -> list:
        return MacPortEnumerator.__GetMatchingPorts(
                MacPortEnumerator.__GetModemWildcard())

class PortManager(object):
    def __init__(self, sdkconfig, port_enumerator):
        self.__sdkconfig = sdkconfig
        self.__console_target = SdkConfigManager.GetConsoleTarget(sdkconfig)
        self.__port_enumerator = port_enumerator

    def GetFlashPort(self) -> str:
        ports = self.__port_enumerator.GetModemPorts()
        if ports:
            return ports[0]
        ports = self.__port_enumerator.GetSerialPorts()
        return ports[0] if ports else None

    def GetMonitorPort(self) -> str:
        if self.__console_target == ConsoleTarget.UART:
            ports = self.__port_enumerator.GetSerialPorts()
        else:
            ports = self.__port_enumerator.GetModemPorts()
        return ports[0] if ports else None

    def PrintPorts(self, fd=sys.stdout):
        print('Serial ports: %s' % self.__port_enumerator.GetSerialPorts(), file=fd)
        print('Modem ports: %s' % self.__port_enumerator.GetModemPorts(), file=fd)
        print('Flash port: %s' % self.GetFlashPort(), file=fd)
        print('Monitor port: %s' % self.GetMonitorPort(), file=fd)


def TargetNeedsMonitorPort(target):
    return target in ('monitor')


def TargetNeedsFlashPort(target):
    return target in ('flash', 'app-flash', 'flash-erase', 'manual-flash')


def MakeTargets(targets, port_manager):
    flash_port = port_manager.GetFlashPort()
    monitor_port = port_manager.GetMonitorPort()
    for target in targets:
        if TargetNeedsMonitorPort(target) and not monitor_port:
            print("Target \"%s\" needs a monitor port, but can't find one." %
                  target,
                  file=sys.stderr)
            port_manager.PrintPorts(sys.stderr)
            sys.exit(errno.ENODEV)
        if TargetNeedsFlashPort(target) and not flash_port:
            print("Target \"%s\" needs a flash port, but can't find one." %
                  target,
                  file=sys.stderr)
            port_manager.PrintPorts(sys.stderr)
            sys.exit(errno.ENODEV)
    if flash_port:
        os.environ["FLASH_PORT"] = flash_port
    if monitor_port:
        os.environ["MONITOR_PORT"] = monitor_port
    cmd = ['make', '--file=Makefile-build']
    cmd.extend(targets)
    subprocess.check_call(cmd)


if 'IDF_PATH' not in os.environ:
    print('ESP-IDF environment not sourced. Run:', file=sys.stderr)
    print(file=sys.stderr)
    print('. $HOME/esp/esp-idf/export.sh', file=sys.stderr)
    print(file=sys.stderr)
    sys.exit(1)

if platform.system() == 'Windows':
    port_enumerator = WindowsPortEnumerator()
else:
    port_enumerator = MacPortEnumerator()

port_manager = PortManager(SdkConfigManager.Load(), port_enumerator)

targets = sys.argv[1:]
MakeTargets(targets, port_manager)
