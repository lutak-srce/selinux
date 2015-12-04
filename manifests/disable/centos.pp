class selinux::disable::centos {
  service{'restorecond':
#   ensure => stopped,
    enable => false,
  }
  service{'mcstrans':
#   ensure => stopped,
    enable => false,
  }
  exec{'disable_selinux_sysconfig':
    command => '/bin/sed -i "s@^\(SELINUX=\).*@\1disabled@" /etc/sysconfig/selinux && /bin/sed -i "s@^\(SELINUX=\).*@\1disabled@" /etc/selinux/config',
    unless  => '/bin/grep -q "SELINUX=disabled" /etc/selinux/config && /bin/grep -q "SELINUX=disabled" /etc/sysconfig/selinux',
  }
}
