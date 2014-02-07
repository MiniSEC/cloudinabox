package {
    'apache2':
        ensure => purged
}

service {
    'apache2':
        ensure => false,
        enable => false,
        require => Package['apache2']
}