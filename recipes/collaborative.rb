#
# Cookbook Name:: add_remove_software
# Recipe:: collaborative
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

if node["add_remove_software"]["groups"]["collaborative"]["install"] == "yes"

  add_remove_software_package_list "collaborative" do
    packages_to_install node["add_remove_software"]["groups"]["collaborative"]["packages"]
    action :process
  end

elsif node["add_remove_software"]["groups"]["collaborative"]["install"] == "no"

  add_remove_software_package_list "collaborative" do
    packages_to_remove node["add_remove_software"]["groups"]["collaborative"]["packages"]
    action :process
  end

end
