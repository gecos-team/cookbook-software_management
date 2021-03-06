maintainer        "Alfonso de Cala"
maintainer_email  "alfonso.cala@juntadeandalucia.es"
license           "Apache 2.0"
description       "Manage software in your workstations"
version           "0.5.0"

provides          "software_management::automatic_updates"
recipe            "software_management::automatic_updates", "Configure scheduled software upgrades"

provides          "software_management::repositories"
recipe            "software_management::repositories", "Add software repositories"

provides          "software_management::others"
provides          "software_management::profile_office"
provides          "software_management::profile_mail"
provides          "software_management::profile_pdftools"
provides          "software_management::profile_scanner"
provides          "software_management::profile_photo_edition"
provides          "software_management::profile_remote_access"
provides          "software_management::profile_collaboration"
provides          "software_management::profile_accessibility"
provides          "software_management::profile_tablet"
provides          "software_management::profile_web"
provides          "software_management::profile_firma"

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
recipe            "software_management::profile_web", "add or remove 'web' related packages"
recipe            "software_management::profile_firma", "configure spanish electronic signature with smartcard or software certificates"



%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end


attribute 'others/to_install',
  :display_name => "Packages to install",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :recipes      => [ 'software_management::others' ]

attribute 'others/to_install/name',
  :display_name => "Package to install",
  :description  => "Package name to install",
  :type         => "string",
  :wizard       => "search",
  :order        => "0",
  :recipes      => [ 'software_management::others' ]


attribute 'others/to_remove',
  :display_name => "Packages to remove",
  :description  => "List of individual packages to be removed",
  :type         => "array",
  :recipes      => [ 'software_management::others' ]

attribute 'others/to_remove/name',
  :display_name => "Package to remove:",
  :description  => "Package name to remove",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::others' ]


attribute 'profile_office/install',
  :display_name => "Install or remove software in 'office' profile",
  :description  => "\"no\" means that 'office' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_office' ]

attribute 'profile_office/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'libreoffice' },
                     { 'name' => 'libreoffice-gnome' },
                     { 'name' => 'libreoffice-base' },
                     { 'name' => 'libreoffice-calc' },
                     { 'name' => 'libreoffice-draw' },
                     { 'name' => 'libreoffice-impress' },
                     { 'name' => 'libreoffice-math' },
                     { 'name' => 'libreoffice-writer' },
                     { 'name' => 'libreoffice-pdfimport' },
                     { 'name' => 'libreoffice-emailmerge' },
                     { 'name' => 'libreoffice-gtk' },
                     { 'name' => 'libreoffice-style-tango' },
                     { 'name' => 'libreoffice-l10n-es' },
                     { 'name' => 'libreoffice-help-es' },
                     { 'name' => 'freemind' },
                     { 'name' => 'tomboy'} ],

  :order        => "1",
  :recipes      => [ 'software_management::profile_office' ]

attribute 'profile_office/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_office' ]


attribute 'profile_mail/install',
  :display_name => "Install or remove software in 'mail' profile",
  :description  => "\"no\" means that 'mail' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_mail' ]

attribute 'profile_mail/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'thunderbird-gecos' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_mail' ]

attribute 'profile_mail/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_mail' ]



attribute 'profile_pdftools/install',
  :display_name => "Install or remove software in 'pdftools' profile",
  :description  => "\"no\" means that 'pdftools' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_pdftools' ]


attribute 'profile_pdftools/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'pdfmod' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_pdftools' ]

attribute 'profile_pdftools/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_pdftools' ]

attribute 'profile_scanner/install',
  :display_name => "Install or remove software in 'scanner' profile",
  :description  => "\"no\" means that 'scanner' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_scanner' ]


attribute 'profile_scanner/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'simple-scan' },
                     { 'name' => 'tesseract-ocr-spa' },
                     { 'name' => 'tesseract-ocr' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_scanner' ]

attribute 'profile_scanner/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_scanner' ]

attribute 'profile_photo_edition/install',
  :display_name => "Install or remove software in 'photo_edition' profile",
  :description  => "\"no\" means that 'photo_edition' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_photo_edition' ]

attribute 'profile_photo_edition/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'gimp' },
                     { 'name' => 'gimp-help-es' },
                     { 'name' => 'gimp-help-en' },
                     { 'name' => 'inkscape' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_photo_edition' ]

attribute 'profile_photo_edition/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "0",
  :recipes      => [ 'software_management::profile_photo_edition' ]


attribute 'profile_remote_access/install',
  :display_name => "Install or remove software in 'remote_access' profile",
  :description  => "\"no\" means that 'remote_access' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_remote_access' ]


attribute 'profile_remote_access/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'gecos-support' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_remote_access' ]

attribute 'profile_remote_access/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_remote_access' ]

attribute 'profile_collaboration/install',
  :display_name => "Install or remove software in 'collaboration' profile",
  :description  => "\"no\" means that 'collaboration' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_collaboration' ]


attribute 'profile_collaboration/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'pidgin' },
                     { 'name' => 'gobby' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_collaboration' ]

attribute 'profile_collaboration/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_collaboration' ]


attribute 'profile_accessibility/install',
  :display_name => "Install or remove software in 'accessibility' profile",
  :description  => "\"no\" means that 'accessibility' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_accessibility' ]


attribute 'profile_accessibility/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'gnome-orca' },
                     { 'name' => 'dasher' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_accessibility' ]

attribute 'profile_accessibility/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_accessibility' ]

attribute 'profile_tablet/install',
  :display_name => "Install or remove software in 'tablet' profile",
  :description  => "\"no\" means that 'tablet' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_tablet' ]

attribute 'profile_tablet/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'xournal' },
                     { 'name' => 'easystroke' },
                     { 'name' => 'x11-xserver-utils' },
                     { 'name' => 'cellwriter' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_tablet' ]

attribute 'profile_tablet/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_tablet' ]

attribute 'profile_web/install',
  :display_name => "Install or remove software in 'web' profile",
  :description  => "\"no\" means that 'web' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :default      => "yes",
  :order        => "0",
  :recipes      => [ 'software_management::profile_web' ]

attribute 'profile_web/packages',
  :display_name => "Packages",
  :description  => "List of individual packages to be installed",
  :type         => "array",
  :default      => [ { 'name' => 'firefox' },
                     { 'name' => 'firefox-locale-es' } ],
  :order        => "1",
  :recipes      => [ 'software_management::profile_web' ]

attribute 'profile_web/packages/name',
  :display_name => "Package:",
  :description  => "Name of software package to supervise",
  :type         => "string",
  :wizard       => "search",
  :order        => "1",
  :recipes      => [ 'software_management::profile_web' ]


attribute 'automatic_updates/on_boot',
  :display_name => "Automatic updates on boot?",
  :description  => "Starts an update when operative system boots",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :order        => "0",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_login',
  :display_name => "Automatic updates on login?",
  :description  => "Starts an update when user logs into a session",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :order        => "1",
  :recipes      => [ 'software_management::automatic_updates' ]


attribute 'automatic_updates/on_monday',
  :display_name => "Automatic updates on Monday?",
  :description  => "Activates updates every Monday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_monday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "2",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_monday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Monday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "3",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_tuesday',
  :display_name => "Automatic updates on Tuesday?",
  :description  => "Activates updates every Tuesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_tuesday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "4",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_tuesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Tuesday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "5",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_wednesday',
  :display_name => "Automatic updates on Wednesday?",
  :description  => "Activates updates every Wednesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_wednesday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "6",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_wednesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Wednesday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "7",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_thursday',
  :display_name => "Automatic updates on Thursday?",
  :description  => "Activates updates every on Thursday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_thursday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "8",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_thursday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Thursday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "9",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_friday',
  :display_name => "Automatic updates on Friday?",
  :description  => "Activates updates every Friday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_friday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "10",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_friday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Friday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "11",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_saturday',
  :display_name => "Automatic updates on Saturday?",
  :description  => "Activates updates every Saturday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_saturday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "12",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_saturday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Saturday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "13",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_sunday',
  :display_name => "Automatic updates on Sunday?",
  :description  => "Activates updates every Sunday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :dependent    => [ { "field" => "automatic_updates/on_sunday_time", "validator" => "istrue" } ],
  :default      => "off",
  :order        => "14",
  :recipes      => [ 'software_management::automatic_updates' ]

attribute 'automatic_updates/on_sunday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Sunday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "15",
  :recipes      => [ 'software_management::automatic_updates' ]


attribute 'automatic_updates/max_random_time_span',
  :display_name => "Max random time span",
  :description  => "Minutes added randomly in order to avoid concurrent updates",
  :type         => "string",
  :validation   => "timespan",
  :required     => "required",
  :default      => "000",
  :order        => "16",
  :recipes      => [ 'software_management::automatic_updates' ]


attribute 'repositories/repositories',
  :display_name => "Repositories",
  :description  => "Software Catalogs",
  :type         => "array",
  :required     => "required",
  :recipes      => [ 'software_management::repositories' ]
  
attribute 'repositories/repositories/name',
  :display_name => "Name",
  :description  => "A short name to identify this repository",
  :type         => "string",
  :validation   => "alphanumericwithdotsdashes",
  :order        => "0",
  :recipes      => [ 'software_management::repositories' ]

attribute 'repositories/repositories/uri',
  :display_name => "URI",
  :description  => "Address to locate this repository (http://v1.gecos.guadalinex.org/gecos)",
  :type         => "string",
  :required     => "required",
  :validation   => "url",
  :order        => "1",
  :recipes      => [ 'software_management::repositories' ]

attribute 'repositories/repositories/distribution',
  :display_name => "Distribution",
  :description  => "Codename of your distribution in the repository (v1)",
  :type         => "string",
  :required     => "required",
  :order        => "2",
  :recipes      => [ 'software_management::repositories' ]

attribute 'repositories/repositories/components',
  :display_name => "Components",
  :description  => "Comma separated list of branches in this repository (main, restricted)",
  :type         => "string",
  :required     => "required",
  :default      => "main",
  :order        => "3",
  :recipes      => [ 'software_management::repositories' ]

attribute 'repositories/repositories/key',
  :display_name => "Key URL",
  :description  => "URL of a file with the key to validate this repository",
  :type         => "string",
  :required     => "required",
  :validation   => "url",
  :order        => "4",
  :recipes      => [ 'software_management::repositories' ]


