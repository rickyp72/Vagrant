class varnish {
	package {'varnish':
		ensure => present,
	}
}

	file {'/etc/varnish/default.vl':
		source => 'puppet:///modules/varnish/test_default.vcl',
		notify => Service["varnish"],
	}
	
	service {'varnish':
		ensure => running,
	}