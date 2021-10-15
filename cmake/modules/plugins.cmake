#
# Copyright (C) 2021 The Falco Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
#

include(ExternalProject)

set(PLUGINS_VERSION "0.1.0-rc1-27-gf40ebd4")

ExternalProject_Add(
  cloudtrail-plugin
  URL "https://download.falco.org/plugins/dev/cloudtrail-${PLUGINS_VERSION}-${CMAKE_HOST_SYSTEM_PROCESSOR}.tar.gz"
  URL_HASH "SHA256=5d4b75bd288efff99a82d012f5d31aef90dcc625f99f71508c1cba746e79a35b"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND "")

install(FILES "${PROJECT_BINARY_DIR}/cloudtrail-plugin-prefix/src/cloudtrail-plugin/libcloudtrail.so" DESTINATION "${FALCO_PLUGINS_DIR}")

ExternalProject_Add(
  json-plugin
  URL "https://download.falco.org/plugins/dev/json-${PLUGINS_VERSION}-${CMAKE_HOST_SYSTEM_PROCESSOR}.tar.gz"
  URL_HASH "SHA256=9ecd0481f72da0384d03c4d72d020ca36c59b99925d826dac07bedc2d65acdc9"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND "")

install(FILES "${PROJECT_BINARY_DIR}/json-plugin-prefix/src/json-plugin/libjson.so" DESTINATION "${FALCO_PLUGINS_DIR}")
