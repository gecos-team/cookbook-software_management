#
# Cookbook Name:: add_remove_software
# Recipe:: default
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

node["packages"]["to_install"].each do |pkg|
  package pkg do
    action :install
  end
end

node["packages"]["to_remove"].each do |pkg|
  package pkg do
    action :remove
  end
end

node["groups"]["to_install"].each do |group|
  node["groups"][group].each do |pkg|
    package pkg do
      action :install
    end
  end
end

node["groups"]["to_remove"].each do |group|
  node["groups"][group].each do |pkg|
    package pkg do
      action :remove
    end
  end
end
