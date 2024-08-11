# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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

# -----------------------------------------------------------------
# ewOS OTA update package

CUSTOM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(CUSTOM_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum
MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: bacon
bacon: $(DEFAULT_GOAL) $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_TARGET_PACKAGE)
	$(hide) $(SHA256) $(CUSTOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CUSTOM_TARGET_PACKAGE).sha256sum
	$(hide) $(MD5) $(CUSTOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CUSTOM_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e ${CL_YLW}" ▓█████  █     █░▓█████▓██   ██▓ ▄▄▄       ███▄    █    "${CL_YLW}
	@echo -e ${CL_YLW}" ▓█   ▀ ▓█░ █ ░█░▓█   ▀ ▒██  ██▒▒████▄     ██ ▀█   █    "${CL_YLW}
	@echo -e ${CL_YLW}" ▒███   ▒█░ █ ░█ ▒███    ▒██ ██░▒██  ▀█▄  ▓██  ▀█ ██▒   "${CL_YLW}
	@echo -e ${CL_YLW}" ▒▓█  ▄ ░█░ █ ░█ ▒▓█  ▄  ░ ▐██▓░░██▄▄▄▄██ ▓██▒  ▐▌██▒   "${CL_YLW}
	@echo -e ${CL_YLW}" ░▒████▒░░██▒██▓ ░▒████▒ ░ ██▒▓░ ▓█   ▓██▒▒██░   ▓██░   "${CL_YLW}
	@echo -e ${CL_YLW}" ░░ ▒░ ░░ ▓░▒ ▒  ░░ ▒░ ░  ██▒▒▒  ▒▒   ▓▒█░░ ▒░   ▒ ▒    "${CL_YLW}
 	@echo -e ${CL_YLW}"  ░ ░  ░  ▒ ░ ░   ░ ░  ░▓██ ░▒░   ▒   ▒▒ ░░ ░░   ░ ▒░   "${CL_YLW}
   	@echo -e ${CL_YLW}" ░     ░   ░     ░   ▒ ▒ ░░    ░   ▒      ░   ░ ░       "${CL_YLW}
   	@echo -e ${CL_YLW}" ░  ░    ░       ░  ░░ ░           ░  ░         ░       "${CL_YLW}
	@echo -e ${CL_YLW}"                        ░ ░                             "${CL_YLW}
	@echo -e ""
	@echo -e ${CL_YLW}"===========-Package Completed-==========="${CL_YLW}
	@echo -e ""
	@echo -e ${CL_CYN}"Zip: "${CL_YLW} $(CUSTOM_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_CYN}$"MD5: "${CL_YLW}" `cat $(CUSTOM_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1` "${CL_RST}
	@echo -e ${CL_CYN}"SHA256: "${CL_YLW}" `sha256sum $(CUSTOM_TARGET_PACKAGE) | cut -d ' ' -f 1` "${CL_RST}
	@echo -e ${CL_CYN}"Size: "${CL_YLW}" `ls -l $(CUSTOM_TARGET_PACKAGE) | cut -d ' ' -f 5` "${CL_RST}
	@echo -e ${CL_CYN}"===========-----Enjoys :)-----==========="${CL_RST}
	@echo -e ""
