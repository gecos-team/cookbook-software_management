maintainer        "Juanje Ojeda"
maintainer_email  "jojeda@emergya.com"
license           "Apache 2.0"
description       "Add or Remove software from a workstation"
version           "0.2.1"

provides            "software_management::packages"

provides            "software_management::office"
provides            "software_management::mail"
provides            "software_management::pdftools"
provides            "software_management::imgscan"
provides            "software_management::imgedit"
provides            "software_management::remoteadmin"
provides            "software_management::collaborative"
provides            "software_management::a11y"
provides            "software_management::tablet"

recipe            "software_management::packages", "add or remove package lists"


recipe            "software_management::office", "add or remove 'office' related packages"
recipe            "software_management::mail", "add or remove 'mail' related packages"
recipe            "software_management::pdftools", "add or remove 'pdftools' related packages"
recipe            "software_management::imgscan", "add or remove 'imgscan' related packages"
recipe            "software_management::imgedit", "add or remove 'imgedit' related packages"
recipe            "software_management::remoteadmin", "add or remove 'remoteadmin' related packages"
recipe            "software_management::collaborative", "add or remove 'collaborative' related packages"
recipe            "software_management::a11y", "add or remove 'a11y' related packages"
recipe            "software_management::tablet", "add or remove 'tablet' related packages"



%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end


attribute 'packages/to_install',
  :display_name => "Packages to install",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :required     => "required",
  :recipes      => [ 'software_management::packages' ]

attribute 'packages/to_install/name',
  :display_name => "Package to install",
  :description  => "Package name to install",
  :type         => "string",
  :required     => "required",
  :wizard       => "search",
  :order        => "0",
  :recipes      => [ 'software_management::packages' ]


attribute 'packages/to_remove',
  :display_name => "Packages to remove",
  :description  => "List of individual packages to be removed",
  :type         => "array",
  :required     => "required",
  :recipes      => [ 'software_management::packages' ]

attribute 'packages/to_remove/name',
  :display_name => "Package to remove:",
  :description  => "Package name to remove",
  :type         => "string",
  :required     => "required",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::packages' ]


attribute 'office/install',
  :display_name => "Install 'office' software group?",
  :description  => "\"no\" means that 'office' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::office' ]

attribute 'mail/install',
  :display_name => "Install 'mail' software group?",
  :description  => "\"no\" means that 'mail' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::mail' ]


attribute 'pdftools/install',
  :display_name => "Install 'pdftools' software group?",
  :description  => "\"no\" means that 'pdftools' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::pdftools' ]


attribute 'imgscan/install',
  :display_name => "Install 'imgscan' software group?",
  :description  => "\"no\" means that 'imgscan' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::imgscan' ]


attribute 'imgedit/install',
  :display_name => "Install 'imgedit' software group?",
  :description  => "\"no\" means that 'imgedit' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::imgedit' ]


attribute 'remoteadmin/install',
  :display_name => "Install 'remoteadmin' software group?",
  :description  => "\"no\" means that 'remoteadmin' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::remoteadmin' ]


attribute 'collaborative/install',
  :display_name => "Install 'collaborative' software group?",
  :description  => "\"no\" means that 'collaborative' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::collaborative' ]



attribute 'a11y/install',
  :display_name => "Install 'a11y' software group?",
  :description  => "\"no\" means that 'a11y' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::a11y' ]


attribute 'tablet/install',
  :display_name => "Install 'tablet' software group?",
  :description  => "\"no\" means that 'tablet' software group will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::tablet' ]

