#!/usr/bin/env python

# A helper script to delete filesystem objects (AKA files & directories).
# All directories will be deleted recursively.

import argparse
from shutil import rmtree
import os

# 0 => quiet, 1 => normal, 2 => verbose.
verbosity = 1
noop = False


class InvalidItemType(Exception):
    pass


def DeleteItem(item):
    global noop, verbosity
    if verbosity > 1:
        print('Deleting \"%s\"' % item)
    if noop:
        return
    if not os.path.exists(item):
        if verbosity > 1:
            print('does not exist: "%s" (ignoring)' % item)
        return
    if os.path.isdir(item):
        rmtree(item)
    elif os.path.isfile(item):
        os.remove(item)
    else:
        raise InvalidItemType('"%s" is not a file or dir' % item)


def DeleteItems(items):
    for item in items:
        DeleteItem(item)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Delete filesystem objects.')
    parser.add_argument('--noop', action='store_true',
                        help="Print items to delete - don't actually delete.")
    parser.add_argument('item', nargs='+',
                        help='Filesystem item to delete')

    args = parser.parse_args()
    if args.noop:
        noop = args.noop

    DeleteItems(args.item)
