package {
    'apache2':
        ensure => absent
}

service {
    'apache2':
        ensure => true,
        enable => true,
        require => Package['apache2']
}