

        class ntp1::service(
        String $service_name = $ntp1::service_name,
        String $service_ensure = $ntp1::service_ensure,
        Boolean $service_enable = $ntp1::service_enable,
        Boolean $service_hasstatus = $ntp1::service_hasstatus,
        Boolean $service_hasrestart = $ntp1::service_hasrestart,
)
{
        service{'ntp1':
        ensure  => $service_ensure,
        enable  => $service_enable,
        name    => $service_name,
        hasstatus => $service_hasstatus,
        hasrestart => $service_hasrestart,

}
}
