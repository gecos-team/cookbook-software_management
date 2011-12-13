# List of individual packages
default[:packages][:to_install] = []
default[:packages][:to_remove] = []

# List of group of packages
default[:groups][:to_install] = [ :office, :mail]
default[:groups][:to_remove] = [ :office, :mail]

# Definition of the groups of packages
default[:groups][:office] = [
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

default[:groups][:mail] = [
                            'thunderbird-locale-en-gb',
                            'thunderbird-locale-en-us',
                            'thunderbird-locale-es-es',
                            'thunderbird',
                            'thunderbird-gnome-support'
                          ]

default[:groups][:pdftools] = [
                                'pdfmod'
                              ]

default[:groups][:imgscan] = [
                               'simple-scan',
                               'tesseract-ocr-spa',
                               'tesseract-ocr'
                             ]

default[:groups][:imgedit] = [
                               'gimp',
                               'gimp-help-es',
                               'gimp-help-en',
                               'inkscape'
                             ]

default[:groups][:remoteadmin] = [
                                   'vnc4server'
                                 ]

default[:groups][:collaborative] = [
                                     'pidgin',
                                     'gobby'
                                   ]
default[:groups][:a11y] = [
                            'gnome-orca',
                            'caribou'
                          ]

default[:groups][:tablet] = [
                              'xournal',
                              'easystroke',
                              'xrandr',
                              'cellwriter'
                            ]

