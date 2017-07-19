class apache2 (
		
		$apacheName = $::apache2::params::apacheName,
) inherits ::apache2::params {
	
	package { 'apache2':
			name 	=> $apacheName,
			ensure  => present,
		}	

	file 	{ 'configuration-file':
			path 	=> $confFile,
			ensure 	=> file,
			source 	=> $confSource,
			notify 	=> Service['apache-service'],
		} 
	
	file 	{ 'virtual-hosts-file':
			path 	=> $vhostsFile,
			ensure 	=> file,
			source 	=> $vhostsSource,
			notify 	=> Service['apache-service'],
		}

	service { 'apache-service':
			name 	=> $apacheName,
			hasrestart =>	true,
		}

}

