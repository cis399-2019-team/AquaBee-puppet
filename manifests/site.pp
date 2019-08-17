node ip-10-0-3-247 {
	include puppet
	include sshd
	include apache2
	include user
	include survive
}

node ip-10-0-3-212 {
	include puppet
	include sshd
	include apache2
	include user
	include survive
}
