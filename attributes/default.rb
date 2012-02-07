# List of individual packages
default[:others][:to_install] = {}
default[:others][:to_remove] = {}

# Definition of the groups of packages
default[:profile_office][:install] = 'yes'
default[:profile_office][:packages] = {
                             '0'=>{'name'=>'libreoffice'},
                             '1'=>{'name'=> 'libreoffice-gnome'},
                             '2'=>{'name'=> 'libreoffice-base'},
                             '3'=>{'name'=> 'libreoffice-calc'},
                             '4'=>{'name'=> 'libreoffice-draw'},
                             '5'=>{'name'=> 'libreoffice-impress'},
                             '6'=>{'name'=> 'libreoffice-math'},
                             '7'=>{'name'=> 'libreoffice-writer'},
                             '8'=>{'name'=> 'libreoffice-pdfimport'},
                             '9'=>{'name'=> 'libreoffice-emailmerge'},
                             '10'=>{'name'=> 'libreoffice-gtk'},
                             '11'=>{'name'=> 'libreoffice-style-tango'},
                             '12'=>{'name'=> 'libreoffice-l10n-es'},
                             '13'=>{'name'=> 'libreoffice-help-es'},
                             '14'=>{'name'=> 'freemind'},
                             '15'=>{'name'=> 'tomboy'}}
                              
       
default[:profile_mail][:install] = 'yes'
default[:profile_mail][:packages] = {
                            '0'=>{'name'=>'thunderbird-gecos'}
                            }

default[:profile_pdftools][:install]  = 'yes'
default[:profile_pdftools][:packages] = {
                               '0'=>{'name'=>'pdfmod'}
                                }

default[:profile_scanner][:install] = 'yes'
default[:profile_scanner][:packages] = {
                              '0'=>{'name'=>'simple-scan'},
                              '1'=>{'name'=> 'tesseract-ocr-spa'},
                              '2'=>{'name'=> 'tesseract-ocr'}
                               }

default[:profile_photo_edition][:install] = 'yes'
default[:profile_photo_edition][:packages] = {
                              '0'=>{'name'=> 'gimp'},
                              '1'=>{'name'=> 'gimp-help-es'},
                              '2'=>{'name'=> 'gimp-help-en'},
                              '3'=>{'name'=> 'inkscape'}
                               }

default[:profile_remote_access][:install] = 'yes'
default[:profile_remote_access][:packages] = {
                                   '0'=>{'name'=>'vnc4server'}
                                   }

default[:profile_collaboration][:install] = 'yes'
default[:profile_collaboration][:packages] = {
                                   '0'=>{'name'=>'pidgin'},
                                   '1'=>{'name'=>'gobby'}
                                   }
default[:profile_accessibility][:install] = 'yes'
default[:profile_accessibility][:packages] = {
                            '0'=>{'name'=>'gnome-orca'},
                            '1'=>{'name'=>'dasher'}
                            }

default[:profile_tablet][:install] = 'yes'
default[:profile_tablet][:packages] = {
                              '0'=>{'name'=>'xournal'},
                              '1'=>{'name'=>'easystroke'},
                              '2'=>{'name'=>'x11-xserver-utils'},
                              '3'=>{'name'=>'cellwriter'}
                              }

default[:profile_web_firma][:install] = 'yes'
default[:profile_web_firma][:packages] = {
                              '0'=>{'name'=>'firefox-firma'}
                              }

default[:profile_web][:install] = 'yes'
default[:profile_web][:packages] = {
                              '0'=>{'name'=>'firefox'},
                              '1'=>{'name'=>'firefox-locale-es'}
                              }

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
