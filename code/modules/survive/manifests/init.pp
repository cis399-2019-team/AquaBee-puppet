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
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/austin/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/devin/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/henzi/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/james/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/jerry/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/keir/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/lucas/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/manhim/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/mapu/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/owen/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

	vcsrepo { "/home/stevev/survivethenight":
		ensure  => present,
		provider => git,
		source  => "https://bitbucket.org/discretelando/survivethenight",
	}

  file { '/home/stevev/survivethenight':
    ensure => 'directory',
    owner  => 'stevev',
    mode   => '0750',
  }

}