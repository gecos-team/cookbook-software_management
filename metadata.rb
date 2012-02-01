maintainer        "Juanje Ojeda"
maintainer_email  "jojeda@emergya.com"
license           "Apache 2.0"
description       "Add or Remove software from a workstation"
version           "0.2.1"

provides            "workstation_management::automatic_updates"
recipe            "workstation_management::automatic_updates", "Set if node updates automatically or not"

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
provides            "software_management::profile_web"
provides            "software_management::profile_web_firma"

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
recipe            "software_management::profile_web_firma", "add or remove 'web_firma' related packages"



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

attribute 'profile_web/install',
  :display_name => "Install 'web' software profile?",
  :description  => "\"no\" means that 'web' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_web' ]

attribute 'profile_web_firma/install',
  :display_name => "Install 'web_firma' software profile?",
  :description  => "\"no\" means that 'web_firma' software profile will be removed",
  :type         => "string",
  :choice       => [ "no" , "yes" ],
  :required     => "required",
  :default      => "no",
  :recipes      => [ 'software_management::profile_web_firma' ]

attribute 'automatic_updates/on_boot',
  :display_name => "Automatic updates on boot?",
  :description  => "Starts an update when operative system boots",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :order        => "0",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_login',
  :display_name => "Automatic updates on login?",
  :description  => "Starts an update when user logs into a session",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :order        => "1",
  :recipes      => [ 'workstation_management::automatic_updates' ]


attribute 'automatic_updates/on_monday',
  :display_name => "Automatic updates on Monday?",
  :description  => "Activates updates every Monday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "2",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_monday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Monday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "3",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_tuesday',
  :display_name => "Automatic updates on Tuesday?",
  :description  => "Activates updates every Tuesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "4",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_tuesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Tuesday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "5",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_wednesday',
  :display_name => "Automatic updates on Wednesday?",
  :description  => "Activates updates every Wednesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "6",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_wednesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Wednesday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "7",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_thursday',
  :display_name => "Automatic updates on Thursday?",
  :description  => "Activates updates every on Thursday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "8",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_thursday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Thursday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "9",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_friday',
  :display_name => "Automatic updates on Friday?",
  :description  => "Activates updates every Friday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "10",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_friday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Friday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "11",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_saturday',
  :display_name => "Automatic updates on Saturday?",
  :description  => "Activates updates every Saturday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "12",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_saturday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Saturday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "13",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_sunday',
  :display_name => "Automatic updates on Sunday?",
  :description  => "Activates updates every Sunday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :order        => "14",
  :recipes      => [ 'workstation_management::automatic_updates' ]

attribute 'automatic_updates/on_sunday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Sunday",
  :type         => "string",
  :validation   => "time",
  :required     => "required",
  :default      => "00:00",
  :order        => "15",
  :recipes      => [ 'workstation_management::automatic_updates' ]


attribute 'automatic_updates/max_random_time_span',
  :display_name => "Max random time span",
  :description  => "Minutes added randomly in order to avoid concurrent updates",
  :type         => "string",
  :validation   => "timespan",
  :required     => "required",
  :default      => "000",
  :order        => "16",
  :recipes      => [ 'workstation_management::automatic_updates' ]
