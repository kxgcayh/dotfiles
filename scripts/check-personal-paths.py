#!/usr/bin/env python3
"""Reject literal home and volume paths in changed configuration files."""
import argparse
from pathlib import Path
import re
import subprocess
import sys


def changed_files(base):
    if base:
        return subprocess.check_output(
            ['git', 'diff', '--name-only', '-z', '--diff-filter=ACMR', base, 'HEAD']
        ).decode().split('\0')
    staged = subprocess.check_output(
        ['git', 'diff', '--cached', '--name-only', '-z', '--diff-filter=ACMR']
    )
    return staged.decode().split('\0')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base', help='compare this revision with HEAD (CI)')
    parser.add_argument('files', nargs='*')
    args = parser.parse_args()
    pattern = re.compile(r'/(?:Users|home|Volumes)/[^\s/\'"<>]+')
    failed = False
    for name in args.files or changed_files(args.base):
        path = Path(name)
        if not path.is_file() or not (path.name.startswith('dot_') or name.startswith(('dot_config/', 'dot_local/', 'private_Library/')) or path.suffix == '.tmpl' or path.name == 'Brewfile'):
            continue
        try:
            lines = path.read_text().splitlines()
        except UnicodeDecodeError:
            continue
        for number, line in enumerate(lines, 1):
            if pattern.search(line):
                print(f'{name}:{number}: literal personal path; use $HOME, a template, or local configuration')
                failed = True
    return int(failed)


if __name__ == '__main__':
    sys.exit(main())
