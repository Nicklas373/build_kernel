#!/usr/bin/env bash
#
# Copyright (C) 2019 @alanndz (Telegram and Github)
# Copyright (C) 2020 HANA-CI Build Project (@nicklas373)
# SPDX-License-Identifier: GPL-3.0-or-later

# Dirty Workaround // YES
TOKEN=${token}
echo $TOKEN

# Cloning Kernel Repository
# Only enable this if want to compile lavender
git clone --depth=1 -b fusion-nodebug https://HANA-CI-Build-Project:$TOKEN@github.com/HANA-CI-Build-Project/kernel_xiaomi_lavender-4.4 .

# Clone compiler script & execute it
wget --output-document=.ci https://raw.githubusercontent.com/Nicklas373/CI/CI/ci
chmod +x .ci
bash ./.ci

