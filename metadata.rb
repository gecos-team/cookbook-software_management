maintainer        "Juanje Ojeda"
maintainer_email  "jojeda@emergya.com"
license           "Apache 2.0"
description       "Add or Remove software from a workstation"
version           "0.2.1"

provides            "software_management::others"

provides            "software_management::profile_office"
provides            "software_management::profile_mail"
provides            "software_management::profile_pdftools"
provides            "software_management::profile_scanner"
provides            "software_management::profile_photo_edition"
provides            "software_management::profile_remote_access"
provides            "software_management::profile_collaboration"
provides            "software_management::profile_accessibility"
provides            "software_management::profile_tablet"

recipe            "software_management::others", "add or remove package lists"


recipe            "software_management::profile_office", "add or remove 'office' related packages"
recipe            "software_management::profile_mail", "add or remove 'mail' related packages"
recipe            "software_management::profile_pdftools", "add or remove 'pdftools' related packages"
recipe            "software_management::profile_scanner", "add or remove 'imgscan' related packages"
recipe            "software_management::profile_photo_edition", "add or remove 'imgedit' related packages"
recipe            "software_management::profile_remote_access", "add or remove 'remoteadmin' related packages"
recipe            "software_management::profile_collaboration", "add or remove 'collaborative' related packages"
recipe            "software_management::profile_accessibility", "add or remove 'a11y' related packages"
recipe            "software_management::profile_tablet", "add or remove 'tablet' related packages"



%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end


attribute 'others/to_install',
  :display_name => "Packages to install",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :required     => "required",
  :recipes      => [ 'software_management::others' ]

attribute 'others/to_install/name',
  :display_name => "Package to install",
  :description  => "Package name to install",
  :type         => "string",
  :required     => "required",
  :wizard       => "search",
  :order        => "0",
  :recipes      => [ 'software_management::others' ]


attribute 'others/to_remove',
  :display_name => "Packages to remove",
  :description  => "List of individual packages to be removed",
  :type         => "array",
  :required     => "required",
  :recipes      => [ 'software_management::others' ]

attribute 'others/to_remove/name',
  :display_name => "Package to remove:",
  :description  => "Package name to remove",
  :type         => "string",
  :required     => "required",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::others' ]


attribute 'profile_office/install',
  :display_name => "Install 'office' software profile?",
  :description  => "\"no\" means that 'office' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_office' ]

attribute 'profile_mail/install',
  :display_name => "Install 'mail' software profile?",
  :description  => "\"no\" means that 'mail' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_mail' ]


attribute 'profile_pdftools/install',
  :display_name => "Install 'pdftools' software profile?",
  :description  => "\"no\" means that 'pdftools' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_pdftools' ]


attribute 'profile_scanner/install',
  :display_name => "Install 'scanner' software profile?",
  :description  => "\"no\" means that 'scanner' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_scanner' ]


attribute 'profile_photo_edition/install',
  :display_name => "Install 'photo_edition' software profile ?",
  :description  => "\"no\" means that 'photo_edition' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_photo_edition' ]


attribute 'profile_remote_access/install',
  :display_name => "Install 'remote_access' software profile ?",
  :description  => "\"no\" means that 'remote_access' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_remote_access' ]


attribute 'profile_collaboration/install',
  :display_name => "Install 'collaboration' software profile ?",
  :description  => "\"no\" means that 'collaboration' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_collaboration' ]



attribute 'profile_accessibility/install',
  :display_name => "Install 'accessibility' software profile ?",
  :description  => "\"no\" means that 'accessibility' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_accessibility' ]


attribute 'profile_tablet/install',
  :display_name => "Install 'tablet' software profile?",
  :description  => "\"no\" means that 'tablet' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_tablet' ]

