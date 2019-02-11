# Manages the apache daemon
#
# @summary Manages the Apache daemon
#
# @example
#   include apache::service
class apache::service ( 
  $service_name = $apache::params::service::service_name
) inhertis apache::params {
  service{ 'apache_service':
    name       => $service_name,
    ensure     => $apache::service_ensure,
    enable     => $apache::service_enable,
    hasrestart => $apache::service_hasrestart,
    
  }
}
