#
# Cookbook Name:: software_management
# Recipe:: profile_firma
#
# Copyright 2012, Junta de Andalucía
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


# Receta para la firma electrónica con DNIe o tarjeta CERES

# Instalar versión compatible de JAVA
package "sun-java6-jre" do
  version "1:6.20dlj-1ubuntu3guada3"
  action :install
end

# Instalar plugin para Firefox
package "sun-java6-plugin" do
  version "1:6.20dlj-1ubuntu3guada3"
  action :install
end

# Eliminar paquete la versión actual de opensc, que incluye el nuevo driver OpenDNIe
# (aunque funciona mejor, y tiene licencia libre, los drivers CERES no son compatibles con esta versión de opensc
package "opensc-opendnie" do
  action :remove
end

# Instalar Opensc antiguo que soporta la tarjeta CERES
package "opensc" do
  version "1:0.11.7-7"
  action :install
end

package "libopensc2" do
  version "1:0.11.7-7"
  action :install
end

# Instalar driver antiguo para DNIe
package "opensc-dnie" do
  version "1.4.6-2"
  action :install
end

# Instalar driver antiguo para tarjeta CERES
package "opensc-ceres" do
  version "2.0.2"
  action :install
end

cookbook_file "/etc/opensc/opensc.conf" do
  source "opensc.conf"
  owner "root"
  group "root"
  mode "0644"
end

# Crear enlaces simbólicos de las librerías reales al sitio donde las busca @firma

@libs=["libnss3.so","libnss3.so.1d","libnss_compat.so","libnss_dns.so","libnss_files.so","libnss_hesiod.so","libnss_nisplus.so","libnss_nis.so","libnssutil3.so","libnssutil3.so.1d","nss"]

@libs.each do |lib|
  link "/usr/lib/"+lib do
    to "/usr/lib/i386-linux-gnu/"+lib
  end
end
