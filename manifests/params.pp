# Parameters for puppet-magnum
#
class magnum::params {

  case $::osfamily {
    'RedHat': {
      # package names
      $common_package         = 'openstack-magnum-common'
      $api_package            = 'openstack-magnum-api'
      $conductor_package      = 'openstack-magnum-conductor'
      # service names
      $api_service            = 'openstack-magnum-api'
      $conductor_service      = 'openstack-magnum-conductor'
      $client_package         = 'python2-magnumclient'
    }
    'Debian': {
      # package names
      $common_package         = undef
      $api_package            = undef
      $conductor_package      = undef
      # service names
      $api_service            = 'magnum-api'
      $conductor_service      = 'magnum-conductor'
      $client_package         = undef
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem")
    }

  } # Case $::osfamily
}
