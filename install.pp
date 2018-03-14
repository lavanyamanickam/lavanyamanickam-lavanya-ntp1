class ntp1::install(
        String $package_name = $ntp1::package_name,
        String $package_ensure = $ntp1::package_ensure,

)
{
        package { $package_name:
        ensure => $package_ensure,
}
}
