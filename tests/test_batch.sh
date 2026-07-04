#!/bin/bash
PASSWORD="Masdika1"

EMAILS=(
"azisjati92@daoseed.com"
"azkabiru23@daoseed.com"
"cikatama05@daoseed.com"
"dafaazan40@daoseed.com"
"dinibaka49@daoseed.com"
"ivanlika05@daoseed.com"
"ivanraja01@daoseed.com"
"lukigani38@daoseed.com"
"miramina41@daoseed.com"
"nilafala02@daoseed.com"
"vegagian98@daoseed.com"
"watinira42@daoseed.com"
)

echo "Starting batch processing of ${#EMAILS[@]} accounts..."
echo ""

for email in "${EMAILS[@]}"; do
    echo "=========================================="
    echo "Processing: $email"
    echo "=========================================="
    ./run.sh --email "$email" --password "$PASSWORD"
    echo ""
    sleep 2
done

echo "=========================================="
echo "Batch processing complete!"
echo "Results in: /root/cf-account-bot/exports/cf_accounts.json"
echo "=========================================="
