exec { "apt-get update":
  path => "/usr/bin",
}
package { "apache2":
  ensure  => present,
  require => Exec["apt-get update"],
}
service { "apache2":
  ensure  => "running",
  require => Package["apache2"],
}
file { "/var/www/sample-webapp":
  ensure  => "link",
  target  => "/vagrant/sample-webapp",
  require => Package["apache2"],
  notify  => Service["apache2"],
}
package { "php5":
	ensure => present,
}
package { "php5-fpm":
	ensure => present,
	require => Package["php5"],
}

package { "nginx":
	ensure => present,

}
# 
service { "nginx":
	ensure => "stopped",
	require => Package["nginx"],
	notify => Service['apache2']
}
user { 'ricky':
	ensure => present,
	}
