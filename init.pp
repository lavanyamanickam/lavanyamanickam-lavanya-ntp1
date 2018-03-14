
class ntp1(
        String $package_name = $ntp1::params::package_name,
        String $package_ensure = $ntp1::params::package_ensure,
        String $config_name = $ntp1::params::config_name,
        String $config_file_mode = $ntp1::params::config_file_mode,
        Array[String] $servers = $ntp1::params::servers,
        String $service_ensure = $ntp1::params::service_ensure,
        String $service_name = $ntp1::params::service_name,
        Boolean $service_enable = $ntp1::params::service_enable,
        Boolean $service_hasrestart = $ntp1::params::service_hasrestart,
        Boolean $service_hasstatus = $ntp1::params::service_hasstatus,
)       inherits ::ntp1::params {
        class { '::ntp1::install':}
        -> class {'::ntp1::config':}
        -> class {'::ntp1::service':}
}
