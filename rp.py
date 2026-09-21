#!/usr/bin/env python3
"""
Replace the values of <string name="tos_url"> and <string name="privacy_policy_url">
in every res/values*/*.xml of an apktool project (values, values-ru, values-es, ...).

Usage (from the Makefile directory):
    python3 replace_links.py --tos https://example.com/tos --privacy https://example.com/privacy
    python3 replace_links.py --tos ... --privacy ... --dry-run     # only show what would change
    python3 replace_links.py --res unpacked/apktool/res --tos ...  # explicit res dir

Either --tos or --privacy can be omitted to change only one of them.
Files are edited as plain text (no XML re-serialization), so the rest of each file
is left byte-for-byte untouched.
"""
import argparse
import glob
import io
import os
import re
import sys
from xml.sax.saxutils import escape


def find_res_dir(explicit):
    if explicit:
        return explicit
    for candidate in ("res", os.path.join("unpacked", "apktool", "res")):
        if os.path.isdir(candidate):
            return candidate
    return None


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--tos", help="new URL for key tos_url")
    ap.add_argument("--privacy", help="new URL for key privacy_policy_url")
    ap.add_argument("--res", help="path to res/ (default: ./res or ./unpacked/apktool/res)")
    ap.add_argument("--dry-run", action="store_true", help="show changes without writing files")
    args = ap.parse_args()

    if not args.tos and not args.privacy:
        ap.error("give at least one of --tos / --privacy")

    res = find_res_dir(args.res)
    if not res or not os.path.isdir(res):
        sys.exit("res dir not found. Run from the apktool project root or pass --res PATH")

    keys = {}
    if args.tos:
        keys["tos_url"] = args.tos
    if args.privacy:
        keys["privacy_policy_url"] = args.privacy

    files = sorted(glob.glob(os.path.join(res, "values*", "*.xml")))
    changed_files = 0
    changed_keys = 0

    for path in files:
        with io.open(path, encoding="utf-8", newline="") as fh:
            text = fh.read()
        new_text = text

        for key, url in keys.items():
            # <string name="KEY" ...>old</string>  (extra attributes allowed)
            pattern = re.compile(
                r'(<string\b[^>]*\bname="' + re.escape(key) + r'"[^>]*>)(.*?)(</string>)',
                re.DOTALL,
            )
            value = escape(url)  # & -> &amp; etc., so the XML stays valid

            def repl(m, key=key, value=value):
                nonlocal changed_keys
                old = m.group(2)
                if old == value:
                    return m.group(0)
                changed_keys += 1
                print("  %-19s %s  ->  %s" % (key, old.strip(), value))
                return m.group(1) + value + m.group(3)

            new_text = pattern.sub(repl, new_text)

        if new_text != text:
            changed_files += 1
            print("[%s] %s" % ("dry-run" if args.dry_run else "patched", path))
            if not args.dry_run:
                with io.open(path, "w", encoding="utf-8", newline="") as fh:
                    fh.write(new_text)

    print("")
    print("scanned %d files, changed %d keys in %d files%s"
          % (len(files), changed_keys, changed_files, " (dry-run, nothing written)" if args.dry_run else ""))
    if changed_keys == 0:
        print("nothing to change: keys not found or already set to these values")
        sys.exit(1)


if __name__ == "__main__":
    main()