# List of individual packages
default[:add_remove_software][:packages][:to_install] = []
default[:add_remove_software][:packages][:to_remove] = []

# List of group of packages
default[:add_remove_software][:groups][:to_install] = []
default[:add_remove_software][:groups][:to_remove] = []

# Definition of the groups of packages
default[:add_remove_software][:groups][:office] = [
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

default[:add_remove_software][:groups][:mail] = [
                                                 'thunderbird-gecos'
                                               ]

default[:add_remove_software][:groups][:pdftools] = [
                                                     'pdfmod'
                                                   ]

default[:add_remove_software][:groups][:imgscan] = [
                                                    'simple-scan',
                                                    'tesseract-ocr-spa',
                                                    'tesseract-ocr'
                                                  ]

default[:add_remove_software][:groups][:imgedit] = [
                                                    'gimp',
                                                    'gimp-help-es',
                                                    'gimp-help-en',
                                                    'inkscape'
                                                  ]

default[:add_remove_software][:groups][:remoteadmin] = [
                                                        'vnc4server'
                                                      ]

default[:add_remove_software][:groups][:collaborative] = [
                                                          'pidgin',
                                                          'gobby'
                                                        ]
default[:add_remove_software][:groups][:a11y] = [
                                                 'gnome-orca',
                                                 'caribou'
                                               ]

default[:add_remove_software][:groups][:tablet] = [
                                                   'xournal',
                                                   'easystroke',
                                                   'x11-xserver-utils',
                                                   'cellwriter'
                                                 ]

