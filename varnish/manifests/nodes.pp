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
	include varnish
	varnish::config {'varnish_config':
			backend_address => '192.168.50.20', port => 8080, daemon_ops_port => 80,
		}
}