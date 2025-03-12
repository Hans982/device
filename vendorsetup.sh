rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

rm -rf device/asus
git clone --depth=1 https://github.com/electrolaboratory/common -b los device/asus/sdm660-common
git clone --depth=1 https://github.com/electrolaboratory/device -b vic device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/electrolaboratory/vendor_common -b los vendor/asus/sdm660-common
git clone --depth=1 https://github.com/electrolaboratory/vendor_device -b vic vendor/asus/X00TD

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

rm -rf vendor/gms
git clone https://gitlab.com/dark.phnx12/vendor-gms-matrixx.git vendor/gms

export KBUILD_BUILD_USER=queen
export TZ=Asia/Jakarta
