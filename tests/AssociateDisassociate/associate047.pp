include ciscoucs

import '../data.pp'

transport_ciscoucs { 'ciscoucs':
  username => "${ciscoucs['username']}",
  password => "${ciscoucs['password']}",
  server   => "${ciscoucs['server']}",
}

ciscoucs_serviceprofile_association { 'name':
  ensure                => "${ciscoucs_profile_association_disassociation['ensure_present']}",
  #organization         => "ort",
  #serviceprofile_name  => "${ciscoucs_profile_association_disassociation['serviceprofile_name']}",
  #server_chassis_id    => "${ciscoucs_profile_association_disassociation['server_chassis_id']}",
  #server_slot_id       => "${ciscoucs_profile_association_disassociation['server_slot_id']}",
  profile_dn            => "${ciscoucs_profile_association_disassociation['service_slot_id']}",
  server_dn             => "orrt",
  transport             => Transport_ciscoucs['ciscoucs'],
}