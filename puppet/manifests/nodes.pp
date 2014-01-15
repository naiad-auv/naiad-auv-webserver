node default {
    user { 'christoffer':
        ensure => 'present',
        groups => ['sudo'],
        home => '/home/christoffer',
        managehome => true,
        password => '$6$b6HwkAtzctT.$6tM.nVrXzsficTolxfzSy/2BeuMKSAGyhWOnx1tf.eb.7pdkM3Qb6Pe11OsHOkEtbnUilT8ln9OBfUzFoZd/m1',
        shell => '/bin/bash',
    }
}
