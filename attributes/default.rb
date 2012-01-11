# List of individual packages
default[:add_remove_software][:packages][:to_install] = []
default[:add_remove_software][:packages][:to_remove] = []

# Definition of the groups of packages
default[:add_remove_software][:groups][:office][:install] = 'no'
default[:add_remove_software][:groups][:office][:packages] = [
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
          
default[:add_remove_software][:groups][:mail][:install] = 'no'
default[:add_remove_software][:groups][:mail][:packages] = [
                                                           'thunderbird-gecos'
                                                           ]

default[:add_remove_software][:groups][:pdftools][:install]  = 'no'
default[:add_remove_software][:groups][:pdftools][:packages] = [
                                                               'pdfmod'
                                                               ]

default[:add_remove_software][:groups][:imgscan][:install] = 'no'
default[:add_remove_software][:groups][:imgscan][:packages] = [
                                                              'simple-scan',
                                                              'tesseract-ocr-spa',
                                                              'tesseract-ocr'
                                                              ]

default[:add_remove_software][:groups][:imgedit][:install] = 'no'
default[:add_remove_software][:groups][:imgedit][:packages] = [
                                                              'gimp',
                                                              'gimp-help-es',
                                                              'gimp-help-en',
                                                              'inkscape'
                                                              ]

default[:add_remove_software][:groups][:remoteadmin][:install] = 'no'
default[:add_remove_software][:groups][:remoteadmin][:packages] = [
                                                                  'vnc4server'
                                                                  ]

default[:add_remove_software][:groups][:collaborative][:install] = 'no'
default[:add_remove_software][:groups][:collaborative][:package] = [
                                                                  'pidgin',
                                                                  'gobby'
                                                                  ]
default[:add_remove_software][:groups][:a11y][:install] = 'no'
default[:add_remove_software][:groups][:a11y][:packages] = [
                                                           'gnome-orca',
                                                           'caribou'
                                                           ]

default[:add_remove_software][:groups][:tablet][:install] = 'no'
default[:add_remove_software][:groups][:tablet][:packages] = [
                                                             'xournal',
                                                             'easystroke',
                                                             'x11-xserver-utils',
                                                             'cellwriter'
                                                             ]

