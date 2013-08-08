class nginx::install {
	
	exec { 'apt-get update':
	  command => '/usr/bin/apt-get update'
	}
	
		package { 'apache2.2-common':
		ensure => absent,
		require => Exec['apt-get update'],
	}
	
	package { 'nginx':
	ensure => installed,
	require => Package['apache2.2-common'],
	}
}
