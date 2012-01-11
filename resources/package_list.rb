#
# Resource Name:: package_list
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

actions :process

attribute :packages_to_add, :kind_of => Array, :required => false, :default => []
attribute :packages_to_del, :kind_of => Array, :required => false, :default => []
