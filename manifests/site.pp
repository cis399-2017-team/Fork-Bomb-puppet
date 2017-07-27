
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

group { 'sysadmins':
  ensure => 'present',
  gid    => '1018',
}

user { 'steve':
  ensure           => 'present',
  comment          => 'Steve (Professor)',
  groups           => ['cis399'],
  home             => '/home/steve',
  password         => 'LOPSA1',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1025',
}

group { 'cis399':
  ensure => 'present',
  gid    => '502',
}

group { 'Ninjas':
  ensure => 'present',
  gid    => '1099',
}

user { 'stevep20':
  ensure           => 'present',
  comment          => 'Steve',
  groups           => ['cis399', 'Ninjas'],
  home             => '/home/stevep20',
  password         => '10.0.1.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1002',
}

user { 'menif':
  ensure           => 'present',
  comment          => 'Meni',
  groups           => ['cis399', 'Ninjas'],
  home             => '/home/menif',
  password         => '10.0.1.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1003',
}
        
group { 'BinaryBoiz':
  ensure => 'present',
  gid    => '1002',
}

user { 'levishutts':
  ensure           => 'present',
  comment          => 'Levi',
  groups           => ['cis399', 'BinaryBoiz'],
  home             => '/home/levishutts',
  password         => '10.0.2.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1004',
}

user { 'cplachno':
  ensure           => 'present',
  comment          => 'Charles',
  groups           => ['cis399', 'BinaryBoiz'],
  home             => '/home/cplachno',
  password         => '10.0.2.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1005',
}

user { 'aziz94shh':
  ensure           => 'present',
  comment          => 'Aziz',
  groups           => ['cis399', 'BinaryBoiz'],
  home             => '/home/aziz94shh',
  password         => '10.0.2.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1006',
}

group { 'ForkBomb':
  ensure => 'present',
  gid    => '1003',
}

user { 'cnf':
  ensure           => 'present',
  comment          => 'Chris Friedrich',
  groups           => ['sysadmins', 'ForkBomb', 'root'],
  home             => '/home/cnf',
  password         => '1SECRET1',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1009',
  managehome       => true,
}

user { 'pogrebinsky2010':
  ensure           => 'present',
  comment          => 'Talaba Pogrebinsky',
  groups           => ['sysadmins', 'ForkBomb'],
  home             => '/home/pogrebinsky2010',
  password         => '1SECRET1',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1010',
}

user { 'Vino':
  ensure           => 'present',
  comment          => 'Matt',
  groups           => ['sysadmins', 'ForkBomb'],
  home             => '/home/Vino',
  password         => '1SECRET1',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1011',
}

group { 'HotShame':
  ensure => 'present',
  gid    => '1004',
}

user { 'houllette':
  ensure           => 'present',
  comment          => 'Holden',
  groups           => ['cis399', 'HotShame'],
  home             => '/home/houllette',
  password         => '10.0.4.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1024',
}

user { 'james-dolan':
  ensure           => 'present',
  comment          => 'James',
  groups           => ['cis399', 'HotShame'],
  home             => '/home/james-dolan',
  password         => '10.0.4.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1013',
}

group { 'SegmentationSquad':
  ensure => 'present',
  gid    => '1005',
}

user { 'slynch2':
  ensure           => 'present',
  comment          => 'Syd',
  groups           => ['cis399', 'SegmentationSquad'],
  home             => '/home/slynch2',
  password         => '10.0.5.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1014',
}

user { 'jeremy003':
  ensure           => 'present',
  comment          => 'Jeremy',
  groups           => ['cis399', 'SegmentationSquad'],
  home             => '/home/jeremy003',
  password         => '10.0.5.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1015',
}

user { 'mitchmeabe':
  ensure           => 'present',
  comment          => 'Mitch',
  groups           => ['cis399', 'SegmentationSquad'],
  home             => '/home/mitchmeabe',
  password         => '10.0.5.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1016',
}

group { 'alphabet':
  ensure => 'present',
  gid    => '1006',
}

user { 'nsato10':
  ensure           => 'present',
  comment          => 'Naookie',
  groups           => ['cis399', 'alphabet'],
  home             => '/home/nsato10',
  password         => '10.0.6.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1017',
}

user { 'mister_person':
  ensure           => 'present',
  comment          => 'Logan',
  groups           => ['cis399', 'alphabet'],
  home             => '/home/mister_person',
  password         => '10.0.6.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1018',
}

user { 'mheb':
  ensure           => 'present',
  comment          => 'Matt H',
  groups           => ['cis399', 'alphabet'],
  home             => '/home/mheb',
  password         => '10.0.6.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1019',
}

group { 'HideousSnakes':
  ensure => 'present',
  gid    => '1007',
}

user { 'kaschaefer':
  ensure           => 'present',
  comment          => 'Kaela',
  groups           => ['cis399', 'HideousSnakes'],
  home             => '/home/kaschaefer',
  password         => '10.0.7.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1007',
}

user { 'nboyd':
  ensure           => 'present',
  comment          => 'Nate',
  groups           => ['cis399', 'HideousSnakes'],
  home             => '/home/nboyd',
  password         => '10.0.7.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1008',
}

user { 'coletc':
  ensure           => 'present',
  comment          => 'Cole',
  groups           => ['cis399', 'HideousSnakes'],
  home             => '/home/coletc',
  password         => '10.0.7.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1020',
}

group { 'TheFightingMongooses':
  ensure => 'present',
  gid    => '1008',
}

user { 'dholstege':
  ensure           => 'present',
  comment          => 'Davis',
  groups           => ['cis399', 'TheFightingMongooses'],
  home             => '/home/dholstege',
  password         => '10.0.8.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1021',
}

user { 'jemin':
  ensure           => 'present',
  comment          => 'Jemin',
  groups           => ['cis399', 'TheFightingMongooses'],
  home             => '/home/jemin',
  password         => '10.0.8.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1022',
}

user { 'jsheabia':
  ensure           => 'present',
  comment          => 'Joseph',
  groups           => ['cis399', 'TheFightingMongooses'],
  home             => '/home/jsheabia',
  password         => '10.0.8.0/24',
  password_max_age => '99999',
  password_min_age => '0',
  uid              => '1023',
}

