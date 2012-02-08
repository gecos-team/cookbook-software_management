#
# Cookbook Name:: software_management
# Recipe:: packages
#
# Copyright 2011, Junta de Andalucía
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
to_remove = []
to_install = []

node["others"]["to_remove"].each do |pkg|
  to_remove << pkg['name'] unless pkg['name'].empty?
end

node["others"]["to_install"].each do |pkg|
  to_install << pkg['name'] unless pkg['name'].empty?
end

software_management_package_list "to install: #{to_install.to_s} to remove: #{to_remove.to_s}" do
  packages_to_install to_install
  packages_to_remove to_remove
  action :process
end
