class survive {

	cron { "survive pull":
		command => "cd /survivethenight && git pull -q origin master",
		user    => root,
		minute  => "*/1",
	}

	package { "g++":
		ensure => installed;
	}

	package { "make":
		ensure => installed;
	}

	file { "/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
	}
}