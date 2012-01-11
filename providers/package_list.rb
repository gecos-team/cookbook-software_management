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
