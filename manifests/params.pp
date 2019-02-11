# Apache parameters
#
# @summary Apache parameters
#
# @example
#   include apache::params
class apache::params {
  case $::osfamily {
    'RedHat': {
      $install_package = 'httpd'
      $service_name = 'httpd'
      $config_path = '/etc/httpd/conf/httpd.conf'
      $config_source = 'puppet:///modules/apache/httpd.conf'
      $vhosts_dir = '/etc/httpdconf.d'
    }
  }
}
