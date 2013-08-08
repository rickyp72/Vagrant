# node 'default' {
# 	user {'defaultuser':
# 		ensure => present,
# 	}
# }

node 'nginx1.localdomain' {
	#include apt
	include nginx
	nginx::vhost { 'puppetlabs-task.com':
                                site_name => 'puppetlabs-task.com', port => 8080,
                             }
	
}

node 'varnish2.localdomain' {
	user {'rh2user':
		ensure => present,
	}
	
	package {'varnish':
		ensure => present,
	}
}