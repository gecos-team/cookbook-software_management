# List of individual packages
default[:others][:to_install] = {}
default[:others][:to_remove] = {}

# Definition of the groups of packages
default[:profile_office][:install] = 'no'
default[:profile_office][:packages] = [
                              'libreoffice',
                              'libreoffice-gnome',
                              'libreoffice-base',
                              'libreoffice-calc',
                              'libreoffice-draw',
                              'libreoffice-impress',
                              'libreoffice-math',
                              'libreoffice-writer',
                              'libreoffice-pdfimport',
                              'libreoffice-emailmerge',
                              'libreoffice-gtk',
                              'libreoffice-style-tango',
                              'libreoffice-l10n-es',
                              'libreoffice-help-es',
                              'freemind',
                              'tomboy'
                              ]
       
default[:profile_mail][:install] = 'no'
default[:profile_mail][:packages] = [
                            'thunderbird-gecos'
                            ]

default[:profile_pdftools][:install]  = 'no'
default[:profile_pdftools][:packages] = [
                                'pdfmod'
                                ]

default[:profile_scanner][:install] = 'no'
default[:profile_scanner][:packages] = [
                               'simple-scan',
                               'tesseract-ocr-spa',
                               'tesseract-ocr'
                               ]

default[:profile_photo_edition][:install] = 'no'
default[:profile_photo_edition][:packages] = [
                               'gimp',
                               'gimp-help-es',
                               'gimp-help-en',
                               'inkscape'
                               ]

default[:profile_remote_access][:install] = 'no'
default[:profile_remote_access][:packages] = [
                                   'vnc4server'
                                   ]

default[:profile_collaboration][:install] = 'no'
default[:profile_collaboration][:packages] = [
                                   'pidgin',
                                   'gobby'
                                   ]
default[:profile_accessibility][:install] = 'no'
default[:profile_accessibility][:packages] = [
                            'gnome-orca',
                            'dasher'
                            ]

default[:profile_tablet][:install] = 'no'
default[:profile_tablet][:packages] = [
                              'xournal',
                              'easystroke',
                              'x11-xserver-utils',
                              'cellwriter'
                              ]

default[:profile_web_firma][:install] = 'no'
default[:profile_web_firma][:packages] = [
                              'firefox-firma'
                              ]

default[:profile_web][:install] = 'no'
default[:profile_web][:packages] = [
                              'firefox',
                              'firefox-locale-es'
                              ]

