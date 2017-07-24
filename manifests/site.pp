
# Fork-Bomb-pm - It's the puppet master...
node ip-10-0-3-27 {
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user => root,
		minute => "*/5",
	}

	include sshd
}

# ForkBombT - Talaba's instance
node ip-10-0-3-222 {
	include sshd
}

# FORKBOMB!!! - Matt's instance
node ip-10-0-3-129 {
	include sshd
}

# Forkbomb-p - Chris's instance
node ip-10-0-3-195 {
	include sshd, apache2
}

# Forkbomb-p2 - Chris's second instance
node ip-10-0-3-243 {
	include sshd, apache2
}

group { 'cis399':
  ensure => 'present',
  gid    => '502',
}


user { 'cnf':
	ensure 			=> 'present',
	home 			=> '/home/stevep20',
	comment			=> 'Chris Friedrich',
	groups			=> 'cis399',
	password		=> '!!',
	password_max_age	=> '99999',
	password_min_age	=> '0',
	shell			=> '/bin/bash',
	uid			=> '501',
}
