class talabasApache (
	$apachename	=  $::apache::params::apachename,
	) inherits ::apache::params {	
	package { 'apache':
		name	=> $apachename,
		ensure  => present,
		}
}
