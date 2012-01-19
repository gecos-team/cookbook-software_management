# List of individual packages
default[:packages][:to_install] = []
default[:packages][:to_remove] = []

# Definition of the groups of packages
default[:office][:install] = 'no'
default[:office][:packages] = [
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
       
default[:mail][:install] = 'no'
default[:mail][:packages] = [
                            'thunderbird-gecos'
                            ]

default[:pdftools][:install]  = 'no'
default[:pdftools][:packages] = [
                                'pdfmod'
                                ]

default[:imgscan][:install] = 'no'
default[:imgscan][:packages] = [
                               'simple-scan',
                               'tesseract-ocr-spa',
                               'tesseract-ocr'
                               ]

default[:imgedit][:install] = 'no'
default[:imgedit][:packages] = [
                               'gimp',
                               'gimp-help-es',
                               'gimp-help-en',
                               'inkscape'
                               ]

default[:remoteadmin][:install] = 'no'
default[:remoteadmin][:packages] = [
                                   'vnc4server'
                                   ]

default[:collaborative][:install] = 'no'
default[:collaborative][:package] = [
                                   'pidgin',
                                   'gobby'
                                   ]
default[:a11y][:install] = 'no'
default[:a11y][:packages] = [
                            'gnome-orca',
                            'caribou'
                            ]

default[:tablet][:install] = 'no'
default[:tablet][:packages] = [
                              'xournal',
                              'easystroke',
                              'x11-xserver-utils',
                              'cellwriter'
                              ]

