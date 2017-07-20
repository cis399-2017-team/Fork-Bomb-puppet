class apache2::params {
	
	$confFile = '/etc/apache2/apache2.conf'
	$confSource = 'puppet:///modules/apache2/apache2.conf'
	$vhostsFile = '/etc/apache2/sites-available/000-default.conf'
	$vhostsSource = 'puppet:///modules/apache2/000-default.conf'
	$indexPage = '/var/www/html/index.html'
	$indexSource = 'puppet:///modules/apache2/index.html'
	$apacheName = 'apache2'
	
}

