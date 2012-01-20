#
# Cookbook Name:: add_remove_software
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
to_install=node["packages"]["to_install"].map{|x| x[1]}.flatten
to_remove=node["packages"]["to_remove"].map{|x| x[1]}.flatten
add_remove_software_package_list "packages" do
  packages_to_install to_install
  packages_to_remove to_remove
  action :process
end
