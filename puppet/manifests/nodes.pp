node default {
    user { 'naiad':
        ensure => 'present',
        groups => ['sudo'],
        home => '/home/naiad',
        managehome => true,
        password => '$6$xhCZGn6cQKgbSL8i$N8FRkfatK6rPHBfP1qOVspydAmHa1RpZVB9VUutI.64ArSz6AosEveaxnnYmEG0s8us9SgxvSPExH1SPEQ4me1',
        shell => '/bin/bash',
    }
}
