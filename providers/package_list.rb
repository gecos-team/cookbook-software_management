#
# Provider Name:: package_list
#
# Author: Roberto C. Morano <rcmorano@emergya.com>
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

action :process do
  installed_pkgs = `dpkg --get-selections | grep -v deinstall | awk '{print $1}'`.split("\n")

  pkgs_to_install = new_resource.packages_to_add - installed_pkgs - new_resource.packages_to_del
  pkgs_to_remove = installed_pkgs & new_resource.packages_to_del

  unless pkgs_to_install.empty?
    pkgs_to_install.each do |pkg|
      package pkg do
          action :add
      end
    end
  end

  unless pkgs_to_remove.empty?
    pkgs_to_remove.each do |pkg|
      package pkg do
          action :remove
      end
    end
  end
  
end
