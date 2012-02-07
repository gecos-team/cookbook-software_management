#
# Cookbook Name:: software_management
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

collaborative_pkg = node["profile_collaborative"]["packages"].map{|x| x[1]}.flatten
coll_pkg=[]
collaborative_pkg.each do |pkg|
  coll_pkg << pkg[:name] unless pkg[:name].empty?
end


if node["profile_collaboration"]["install"] == "yes"

  software_management_package_list "collaborative" do
    packages_to_install coll_pkg
    action :process
  end

elsif node["profile_collaboration"]["install"] == "no"

  software_management_package_list "collaborative" do
    packages_to_remove coll_pkg
    action :process
  end

end
