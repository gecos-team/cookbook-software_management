#
# Cookbook Name:: software_management
# Recipe:: repositories
#
# Copyright 2012 Junta de Andalucía
#
# Author::
#  * Alfonso de Cala <alfonso.cala@juntadeandalucia.es>
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


node["repositories"]["repositories"].each do |repo|
  Chef::Log.info "Adding Software Repository: #{repo['name']}"
  software_management_repository repo["name"] do
    uri repo["uri"]
    distribution repo["distribution"]
    components repo["components"].split(',')
    key repo["key"]
  end
end
