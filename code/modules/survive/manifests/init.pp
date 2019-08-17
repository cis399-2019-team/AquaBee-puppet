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

	file { "/home/ubuntu/survivethenight":
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

	file { "/home/austin/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "austin",
	}

	file { "/home/devin/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "devin",
	}

	file { "/home/henzi/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "henzi",
	}

	file { "/home/james/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "james",
	}

	file { "/home/jerry/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "jerry",
	}

	file { "/home/keir/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "keir",
	}

	file { "/home/lucas/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "lucas",
	}

	file { "/home/manhim/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "manhim",
	}

	file { "/home/mapu/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "mapu",
	}

	file { "/home/owen/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "owen",
	}

	file { "/home/stevev/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		require => Package["g++"],
		require => Package["make"],
		user => "stevev",
	}
}