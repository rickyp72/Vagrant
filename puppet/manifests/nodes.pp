node 'rh1.localdomain' {
	user {'rh1user':
		ensure => present,
	}
	
}

node 'rh2.localdomain' {
	user {'rh2user':
		ensure => present,

}