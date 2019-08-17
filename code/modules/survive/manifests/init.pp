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

	vcsrepo { "/home/ubuntu/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "ubuntu",
	}

	vcsrepo { "/home/austin/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "austin",
	}

	vcsrepo { "/home/devin/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "devin",
	}

	vcsrepo { "/home/henzi/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "henzi",
	}

	vcsrepo { "/home/james/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "james",
	}

	vcsrepo { "/home/jerry/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "jerry",
	}

	vcsrepo { "/home/keir/survivethenight":
		ensure  => directory,
		recurse => true,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "keir",
	}

	vcsrepo { "/home/lucas/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "lucas",
	}

	vcsrepo { "/home/manhim/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "manhim",
	}

	vcsrepo { "/home/mapu/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "mapu",
	}

	vcsrepo { "/home/owen/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "owen",
	}

	vcsrepo { "/home/stevev/survivethenight":
		ensure  => directory,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
		user => "stevev",
	}
}