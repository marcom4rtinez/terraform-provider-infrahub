#!/bin/bash

args=()
for arg in "$@"; do
  args+=("$arg")
done

manifest_generator="github.com/marcom4rtinez/terraform-registry-manifest/cmd/manifest@latest"

search_string="\"version\": \"$2\","

if grep -q "$search_string" registry-manifest.json; then
echo "already up2date! Adding hashes now..."
cat dist/*SHA256SUMS | go run $manifest_generator  --hashes --manifest registry-manifest.json
rm -Rf dist/
else
echo "wrong version found! Regenerating..."
go run $manifest_generator "${args[@]}" > registry-manifest.json
fi