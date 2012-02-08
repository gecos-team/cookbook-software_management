# List of individual packages
default[:others][:to_install] = {}
default[:others][:to_remove] = {}

# Definition of the groups of packages
default[:profile_office][:install] = 'yes'
default[:profile_office][:packages] = [
                             { 'name' => 'libreoffice' },
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
                             { 'name' => 'tomboy' }
                             ] 
                              
       
default[:profile_mail][:install] = 'yes'
default[:profile_mail][:packages] = [ { 'name' => 'thunderbird-gecos' } ]

default[:profile_pdftools][:install]  = 'yes'
default[:profile_pdftools][:packages] = [ { 'name' => 'pdfmod' } ]
                                       

default[:profile_scanner][:install] = 'yes'
default[:profile_scanner][:packages] = [
                               { 'name' => 'simple-scan' },
                               { 'name' => 'tesseract-ocr-spa' },
                               { 'name' => 'tesseract-ocr' }
                               ]

default[:profile_photo_edition][:install] = 'yes'
default[:profile_photo_edition][:packages] = [
                              { 'name' => 'gimp' },
                              { 'name' => 'gimp-help-es' },
                              { 'name' => 'gimp-help-en' },
                              { 'name' => 'inkscape' }
                               ]

default[:profile_remote_access][:install] = 'yes'
default[:profile_remote_access][:packages] = [ { 'name' => 'vnc4server' } ]

default[:profile_collaboration][:install] = 'yes'
default[:profile_collaboration][:packages] = [
                                   { 'name' => 'pidgin' },
                                   { 'name' => 'gobby' }
                                   ]
default[:profile_accessibility][:install] = 'yes'
default[:profile_accessibility][:packages] = [
                            { 'name' => 'gnome-orca' },
                            { 'name' => 'dasher' }
                            ]

default[:profile_tablet][:install] = 'yes'
default[:profile_tablet][:packages] = [
                              { 'name' => 'xournal' },
                              { 'name' => 'easystroke' },
                              { 'name' => 'x11-xserver-utils' },
                              { 'name' => 'cellwriter' }
                              ]

default[:profile_web_firma][:install] = 'yes'
default[:profile_web_firma][:packages] = [ { 'name' => 'firefox-firma' } ]

default[:profile_web][:install] = 'yes'
default[:profile_web][:packages] = [
                              { 'name' => 'firefox' },
                              { 'name' => 'firefox-locale-es' }
                              ]

default[:automatic_updates][:on_boot]='false'
default[:automatic_updates][:on_login]='false'
default[:automatic_updates][:on_monday]='off'
default[:automatic_updates][:on_monday_time]='00:00'
default[:automatic_updates][:on_tuesday]='off'
default[:automatic_updates][:on_tuesday_time]='00:00'
default[:automatic_updates][:on_wednesday]='off'
default[:automatic_updates][:on_wednesday_time]='00:00'
default[:automatic_updates][:on_thursday]='off'
default[:automatic_updates][:on_thursday_time]='00:00'
default[:automatic_updates][:on_friday]='off'
default[:automatic_updates][:on_friday_time]='00:00'
default[:automatic_updates][:max_random_time_span]='000'
