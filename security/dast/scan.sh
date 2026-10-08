#!/bin/bash
set -euo pipefail

echo "=== DAST - Network Security Scan ==="

nmap -Pn -p 8080 --open 127.0.0.1 -oN station-ski-dast.txt

if grep -Eq '^8080/tcp[[:space:]]+open[[:space:]]' station-ski-dast.txt; then
    echo "PASS: Jenkins port 8080 is open"
else
    echo "FAIL: Jenkins port 8080 is not open"
    exit 1
fi
