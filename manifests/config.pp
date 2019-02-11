#onfigures Apache
#
# @summonfigures Apache
#
# @example
#   include apache::config
class apache::config (
  $config_path = $apache::params::config_path,
  $config_source = $$apache::params::config_source,
) inhertis apache::params {
  file { 'apache_config':
    path   => $config_path,
    source => $config_source,
    ensure => $apache::config_ensure,
    notify => Service['apache_service'],
   
  }
}
