define varnish::config( $backend_address, $port ){
	
	file {"/etc/varnish/default.vcl":
		content => template('varnish/default.vcl.erb'),
		
	}
}