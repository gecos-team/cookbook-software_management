# List of individual packages
default[:packages][:to_install] = []
default[:packages][:to_remove] = []

# List of group of packages
default[:groups][:to_install] = [ :basic, :office]
default[:groups][:to_remove] = [ :basic, :office]

# Definition of the groups of packages
default[:groups][:basic] = []
default[:groups][:office] = [
                             'libreoffice-writer',
                             'libreoffice-calc',
                             'libreoffice-impress'
                            ]
default[:groups][:internet] = [
                               'firefox',
                               'firefox-firma'
                              ]

