#!/bin/bash
set -e
set -x

# back compatibility
if [[ -f "assets/coins.json" && ! -f "coins_ci.json" ]]; then
    exit 0
fi

# get coins file
coins_repo_commit="$( jq -r '.coins_repo_commit' coins_ci.json )"
curl -l "https://raw.githubusercontent.com/KomodoPlatform/coins/${coins_repo_commit}/coins" --output "assets/coins.json"
curl -l "https://raw.githubusercontent.com/KomodoPlatform/coins/${coins_repo_commit}/utils/coins_config_tcp.json" --output "assets/coins_config_tcp.json"

# get assets lists
jq -r 'keys | .[]' assets/coins_config_tcp.json > app_assets
jq -r '.[].coin' assets/coins.json > coins_assets

# check if all assets from 0.5.6-coins are present in coins.json
set +x
while IFS= read -r line;  do
    if [[ "${line}" =~ $(echo ^\($(paste -sd'|' coins_assets)\)$) ]]; then
        echo "${line} check passed"
    else
        echo "${line} not found"
        exit 2
    fi
done < app_assets
