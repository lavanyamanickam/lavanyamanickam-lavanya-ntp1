
        class ntp1::config(
                String $config_name = $ntp1::config_name,
                String $config_file_mode = $ntp1::config_file_mode,
                Array[String] $servers = $ntp1::servers,
)
{
                file {'/etc/$config_name' :
                ensure   => file,
                owner    => 0,
                group    => 0,
                mode     => $config_file_mode,
                content  => template("$module_name/ntp.conf.erb")
}
}
