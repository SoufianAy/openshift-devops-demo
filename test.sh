#!/bin/sh

set -eu

echo "Starte Tests ..."

test -f index.html
echo "✓ index.html vorhanden"

grep -q "<h1>" index.html
echo "✓ Überschrift vorhanden"

grep -q 'id="version"' index.html
echo "✓ Versionsinformation vorhanden"

grep -q "Red Hat OpenShift" index.html
echo "✓ Plattforminformation vorhanden"

echo
echo "Alle Tests erfolgreich ✓"