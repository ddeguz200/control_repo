class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtL/6HIqWPwt2XlHJkBXwcQQxV/QQRN+D0dpes41U6YcX+b5WgItqt+F7yN9/WQ0P8vpEErqZEIh4qYINEgNPEY+sKXA30taNvhCvtVNVMsL6GlBf0YiOKh5zRlmowD/2ktzDvEn32NHg++yxgKkREKiN2BiDCTjg7NbA8te7dKr632tjtMB55GGT+g8kJ1Fh7wllskCgIMT24OBLnqm6jRKrYrsM9NYe/UdgIxIAkb4HXM86Hkikq6ztX5Wel8hTzyQVMzJ/8Nge5bc2vrhLNnEqDOfWtLnwURnXWHA1Kio/BsZzRNX/T2Fw6DYUWl9scpLzX+cPxUee68ammH9SV',
        }
       
}
