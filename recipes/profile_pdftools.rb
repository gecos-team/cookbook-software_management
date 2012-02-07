#
# Cookbook Name:: software_management
# Recipe:: pdftools
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

pdftools_pkg = node["profile_pdftools"]["packages"].map{|x| x[1]}.flatten
pdf_pkg=[]
pdftools_pkg.each do |pkg|
  pdf_pkg << pkg[:name] unless pkg[:name].empty?
end


if node["profile_pdftools"]["install"] == "yes"

  software_management_package_list "pdftools" do
    packages_to_install pdf_pkg
    action :process
  end

elsif node["profile_pdftools"]["install"] == "no"

  software_management_package_list "pdftools" do
    packages_to_remove pdf_pkg
    action :process
  end

end
