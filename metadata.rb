maintainer        "Juanje Ojeda"
maintainer_email  "jojeda@emergya.com"
license           "Apache 2.0"
description       "Add or Remove software from a workstation"
version           "0.1.1"

recipe            "add_remove_software", "Add or Remove a list of packages"

%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end

attribute 'add_remove_software/packages/to_install',
  :display_name => "To install",
  :description  => "List of individual packages to be installed",
  :type         => "array"

attribute 'add_remove_software/packages/to_remove',
  :display_name => "To remove",
  :description  => "List of individual packages to be removed",
  :type         => "array"

attribute 'add_remove_software/groups/to_install',
  :display_name => "To install",
  :description  => "List of groups of packages to be installed",
  :type         => "array"

attribute 'add_remove_software/groups/to_remove',
  :display_name => "To remove",
  :description  => "List of group of packages to be removed",
  :type         => "array"


