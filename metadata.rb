maintainer        "Juanje Ojeda"
maintainer_email  "jojeda@emergya.com"
license           "Apache 2.0"
description       "Add or Remove software from a workstation"
version           "0.1.1"

provides            "add_remove_software::packages"

provides            "add_remove_software::office"
provides            "add_remove_software::mail"
provides            "add_remove_software::pdftools"
provides            "add_remove_software::imgscan"
provides            "add_remove_software::imgedit"
provides            "add_remove_software::remoteadmin"
provides            "add_remove_software::collaborative"
provides            "add_remove_software::a11y"
provides            "add_remove_software::tablet"

recipe            "add_remove_software::packages", "add or remove package lists"


recipe            "add_remove_software::office", "add or remove 'office' related packages"
recipe            "add_remove_software::mail", "add or remove 'mail' related packages"
recipe            "add_remove_software::pdftools", "add or remove 'pdftools' related packages"
recipe            "add_remove_software::imgscan", "add or remove 'imgscan' related packages"
recipe            "add_remove_software::imgedit", "add or remove 'imgedit' related packages"
recipe            "add_remove_software::remoteadmin", "add or remove 'remoteadmin' related packages"
recipe            "add_remove_software::collaborative", "add or remove 'collaborative' related packages"
recipe            "add_remove_software::a11y", "add or remove 'a11y' related packages"
recipe            "add_remove_software::tablet", "add or remove 'tablet' related packages"



%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end

attribute 'default/add_remove_software/packages/to_install',
  :display_name => "To install",
  :description  => "List of individual packages to be installed",
  :type         => "array"

attribute 'default/add_remove_software/packages/to_remove',
  :display_name => "To remove",
  :description  => "List of individual packages to be removed",
  :type         => "array"

attribute 'office/add_remove_software/group/office/install',
  :display_name => "Install 'office' software group?",
  :description  => "\"no\" means that 'office' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::office' ]

attribute 'mail/add_remove_software/group/mail/install',
  :display_name => "Install 'mail' software group?",
  :description  => "\"no\" means that 'mail' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::mail' ]

attribute 'pdftools/add_remove_software/group/pdftools/install',
  :display_name => "Install 'pdftools' software group?",
  :description  => "\"no\" means that 'pdftools' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::pdftools' ]


attribute 'imgscan/add_remove_software/group/imgscan/install',
  :display_name => "Install 'imgscan' software group?",
  :description  => "\"no\" means that 'imgscan' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::imgscan' ]


attribute 'imgedit/add_remove_software/group/imgedit/install',
  :display_name => "Install 'imgedit' software group?",
  :description  => "\"no\" means that 'imgedit' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::imgedit' ]


attribute 'remoteadmin/add_remove_software/group/remoteadmin/install',
  :display_name => "Install 'remoteadmin' software group?",
  :description  => "\"no\" means that 'remoteadmin' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::remoteadmin' ]


attribute 'collaborative/add_remove_software/group/collaborative/install',
  :display_name => "Install 'collaborative' software group?",
  :description  => "\"no\" means that 'collaborative' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::collaborative' ]

attribute 'a11y/add_remove_software/group/a11y/install',
  :display_name => "Install 'a11y' software group?",
  :description  => "\"no\" means that 'a11y' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::a11y' ]

attribute 'tablet/add_remove_software/group/tablet/install',
  :display_name => "Install 'tablet' software group?",
  :description  => "\"no\" means that 'tablet' software group will be removed",
  :type         => "string",
  :choice       => [ "yes" , "no" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'add_remove_software::tablet' ]
