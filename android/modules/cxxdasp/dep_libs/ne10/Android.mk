#
#    Copyright (C) 2014 Haruki Hasegawa
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

#
# Ne10 Library (libne10)
#

# NOTEs:
# - only supports armeabi-v7a platform

MY_DIR := $(call my-dir)
CXXDASP_TOP_DIR := $(call cxxdasp-normalize-path, $(MY_DIR)/../../../../..)

LOCAL_PATH := $(CXXDASP_TOP_DIR)/android/dep_libs/ne10

# if $(TARGET_ARCH_ABI) == {armeabi-v7a | armeabi-v7a-hard | arm64-8a,}
ifneq (, $(filter armeabi-v7a armeabi-v7a-hard arm64-v8a, $(TARGET_ARCH_ABI)))

# build static library
include $(MY_DIR)/build-static-library.mk

# use pre-built library
# include $(MY_DIR)/use-prebuilt-static-library.mk

else
# dummy library
include $(MY_DIR)/build-dummy-static-library.mk

endif
