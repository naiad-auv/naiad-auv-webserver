node default {

    file { 'placeholder.conf':
      path    => '/etc/apache2/conf.d/placeholder.conf',
      ensure  => present,
      mode    => 0640,
      content => "",
    }


    class { 'apache':
        default_mods        => false,
        default_confd_files => false,
    }

    apache::vhost { 'naiad.localhost.dev':
        port => '80',
        docroot => '/var/www/naiad.se',
    }

}
