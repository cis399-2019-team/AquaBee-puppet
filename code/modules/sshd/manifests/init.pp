class sshd {
	package { "openssh-server":
		ensure => installed;
	}
	
	file { "/etc/ssh/sshd_config":
		ensure  => present,
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		source  => "puppet:///modules/sshd/sshd_config",
		require => Package["openssh-server"],
	}

	service { "ssh":
		enable    => true,
		ensure    => running,
		subscribe => File["/etc/ssh/sshd_config"],
	}

	ssh_authorized_key { "discretelando_rsa":
		ensure => present,
		user   => "ubuntu",
		type   => "ssh-rsa",
		key    => "AAAAB3NzaC1yc2EAAAADAQABAAACAQDDByI3Qw5bixjHbX9P+lmCnDtsPeT/R4ui34GP3sijUr1XyrDncB+SFqcrfEvT8973+kwQ3qX8hcJ2jj5eMXUgXSbSHTzB8O7HDoARG20F63ruVHYlNUNdYiRHECT9qc0wwkNF8+xljIiK4zK3/UpVKVTCiXY4GXMIhtif9NSwOUbad5HFLifudW9hj3EqJQob7nSukWCxVMxf70zc7cxts5zECSn267z0Y/XdskAgil0GtnDX4ADZIddM1jZ+2TVP0y/B6w9/o7wjQ/OUgaBLm1M2gUm/c1D5pNRyyogNHOiotLxlso8S5vYHTC4Uq6BJXPyrPu+RnmsGebMTkHsZxQ2xnvYMUJVuCcVwz4Z0TGc6NcA4ISgOetGXf3O7LI3a15/znpaCpMJuqevo/jNyqb7Vr/lcovRw2KwfDY+H02fjuY/F4ptpgEbFXlGaw75B9z+O3kXXXql4AdpflMPnXeGtUl1rrlUM/w9j62DfJ55Il4HL1LNw63LEnch3zzpuNkGP9G/ht+pjyandtrhf42JDjfzWfDr2c5q+MDcQwrs8and0Lj1Y/XhHBvz10XYBtyGuumUZ4ER+XNwwpof5qO9bBMUENbsLEQHvGXjQQ1K4cx9tG8OBqH6Rqowl6JrOW3U0v8StecGGsAvzvNO8M0kJMUcD8Qt0XRWxX+U5iQ==",
	}

    ssh_authorized_key { "kylieq_rsa":
        ensure => present,
        user   => "ubuntu",
        type   => "ssh-rsa",
		key    => "AAAAB3NzaC1yc2EAAAADAQABAAACAQC0xRdANCXlcVQpGhqEv0R3064pKetQfZ73H+uiOVov2Amk1fBycgcmlcp0wimF6i6RGRNachdLLub6lBrb1VWh861BmeRB9W1Ge42jZQMYR4iNOj2XpHPIm2K2NMer+2kaQhr0BKrI6z3L4VRTEjR9+hTVMBzhaWv2rX9V+cX+rYGOnTkMgpKIWQMQsSlsexGcePaDDSlnR4VLVW+Csu8YxUv6umie0s0E09ItLceCQEWnrbK+uQJnpmDcC9xqscKxGLLzvZ/xYralhXkmEek3MhlzLR8dR+wsGJD4G5dMze0luXis+xnKKAL+QQQ791gszA3NFZ4RQK0c+Kw1A78CiiqGaFtVJ1BYHJ0ZuHcPQE7iloAzzhuWVbXMFoNKwtWNj5iiv3IjFtNg/bHXtWEkESFirvlmJr5buy5DfRB7iervxLtps6GD2Y7ePltoa44nbThnvxBnu5JSzjnPMQer0ORLvwzRETDCzEZ5m5UW+HqZCjOnB9dSG9w2bOu8l2rFWuf5Ul+MXf2u/RDRA9ucaSpTNbUm/TPBXJNOj8R5F04fF/Q5AaIB8gXAnZk7bWXGCsOlY1UbNXA2mkydH+jZsgI6D+Jn2EKiPIao1ONHdAGBXgCHVPF30OHQPj3qkWj9uA7P5hf7AI21m/NTmmPA6I5ipHRNPTuJyoT4isS5xQ==",
	}
}
