include ciscoucs

transport_ciscoucs { 'ciscoucs':
  username => 'admin',
  password => 'admin',
  server   => '192.168.114.131',
}


ciscoucs_serviceprofile { 'name':
  name        => '',
  org         => '',
  dn          => 'org-root/ls-testServiceProfile',
  #ensure      => present,
  power_state => 'down',
  transport   => Transport_ciscoucs['ciscoucs'],
}
