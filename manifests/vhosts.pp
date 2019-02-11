# Configures virtual hosts
#
# @summary Configure vhosts
#
# @example
#   include apache::vhosts
class apache::vhosts (
  $vhosts_dir = $apache::params::vhosts_dir
) inherits apache::params {
  file { "${vhosts_servername}.conf":
    content => epp('apache/vhosts.conf.epp'),
    ensure  => $apache::vhosts_ensure,
    path    => "${vhosts_dir}/${apache::servername}.conf",   
  }

  file { "$apache::vhosts_root":
    ensure => $apache::vhosts_root_ensure
  }
}
