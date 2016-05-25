maintainer       "Matt Ryder"
maintainer_email "m.ryder@volcanic.co.uk"
license          "MIT"
description      "Configure and boot Resque Workers"

name   'resque'
recipe 'resque::start_workers',    'Fork and create a single Resque Worker instance'
recipe 'resque::stop_workers',     'Shutdown all Resque Worker instances'
recipe 'resque::reboot_workers',   'Shutdown current workers, then load new instances'