# OrangeFox Recovery device tree for the Samsung Galaxy F62 (f62)

| Device | Samsung Galaxy F62 |
| :-- | :-- |
| Codename | f62 |
| Models | SM-E625F |
| SoC | Exynos 9825 |

Common tree: [android_device_samsung_exynos9820-common](https://github.com/Exynos982x-OrangeFox/android_device_samsung_exynos9820-common)

## Kernel

The prebuilt `Image`, `dtbo.img` and `dtb/exynos9825.dtb` are extracted from the official LineageOS 23.2 `recovery.img` of
2026-10-23 (sha256 `13362cb32645242bcea8e69eedf9d8c73a01999231b7bcd83fd6522b3bfe5f57`), built from
[android_kernel_samsung_exynos9820](https://github.com/LineageOS/android_kernel_samsung_exynos9820/tree/a412cfaf86b980ce35cae96a35f678c8ea551575)
with `exynos9820-f62_defconfig`.

## Building

```sh
git clone https://gitlab.com/OrangeFox/sync.git
cd sync
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1

cd ~/fox_12.1
git clone -b fox_12.1 https://github.com/Exynos982x-OrangeFox/android_device_samsung_f62 device/samsung/f62
git clone -b fox_12.1 https://github.com/Exynos982x-OrangeFox/android_device_samsung_exynos9820-common device/samsung/exynos9820-common

export FOX_BUILD_DEVICE=f62
source build/envsetup.sh
lunch twrp_f62-eng
mka adbd recoveryimage
```

The recovery image is written to `out/target/product/f62/`, along with an Odin-flashable `.tar`.
