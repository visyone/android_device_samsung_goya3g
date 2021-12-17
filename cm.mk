# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := goya3g

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/goya3g/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goya3g
PRODUCT_NAME := cm_goya3g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T111
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=goya3g \
    TARGET_DEVICE=goya3g \
    PRIVATE_BUILD_DESC="goya3g-user 4.4.4 JDQ39 T111XXUANAB release-keys" \
    BUILD_FINGERPRINT="samsung/goya3g/goya3g:4.4.4/JDQ39/T111XXUANAB:user/release-keys"