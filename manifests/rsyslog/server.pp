class puppet::rsyslog::server(
    $logdir => '/var/log/puppet'
) {
    file { '/etc/rsyslog.d/puppet-clients.conf':
        content => template('puppet-puppet/rsyslog/server/puppet-clients.conf'),
        owner   => 'root',
        group   => 'root',
        mode    => '640',
    }
    file { '/etc/rsyslog.d/puppet-server.conf':
        content => template('puppet-puppet/rsyslog/server/puppet-server.conf'),
        owner   => 'root',
        group   => 'root',
        mode    => '640',
    }
}
