class survive {

	cron { "survive pull":
		command => "cd /home/ubuntu/survivethenight && git pull -q origin master",
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

  file { '/home/austin/survivethenight':
    ensure => 'directory',
    owner  => 'austin',
    mode   => '0750',
    recurse => true,
  }

  file { '/home/devin/survivethenight':
    ensure => 'directory',
    owner  => 'devin',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/henzi/survivethenight':
    ensure => 'directory',
    owner  => 'henzi',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/james/survivethenight':
    ensure => 'directory',
    owner  => 'james',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/jerry/survivethenight':
    ensure => 'directory',
    owner  => 'jerry',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/keir/survivethenight':
    ensure => 'directory',
    owner  => 'keir',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/lucas/survivethenight':
    ensure => 'directory',
    owner  => 'lucas',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/manhim/survivethenight':
    ensure => 'directory',
    owner  => 'manhim',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/mapu/survivethenight':
    ensure => 'directory',
    owner  => 'mapu',
    mode   => '0750',
    recurse => true,
  }
  file { '/home/owen/survivethenight':
    ensure => 'directory',
    owner  => 'owen',
    mode   => '0750',
    recurse => true,
  }

  file { '/home/stevev/survivethenight':
    ensure => 'directory',
    owner  => 'stevev',
    mode   => '0750',
    recurse => true,
  }

   file { '/home/ubuntu/survivethenight':
    ensure => 'directory',
    owner  => 'ubuntu',
    mode   => '0750',
    recurse => true,
  }

}