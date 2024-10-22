#!bin/bash
set -e 
echo "evo gsi"

repo(){
 echo "repo init..."
 repo init -u https://github.com/Evolution-X/manifest -b udc
 echo
}

manifests() {
 echo "ready for manifests.."
 mkdir -p .repo/local_manifests
 cp -r default.xml .repo/local_manifests
 echo
}

reposync() {
 echo "repo sync.."
 repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
 echo
}