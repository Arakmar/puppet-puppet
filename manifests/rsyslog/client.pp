class puppet::rsyslog::client(
    $remote_logging = false,
    $local_logging = true,
    $server = '127.0.0.1',
    $force_udp = false,
    $logdir = '/var/log/puppet'
) {
    file { '/etc/rsyslog.d/puppet-agent.conf':
        content => template('puppet/rsyslog/puppet-agent.conf'),
        owner   => 'root',
        group   => 'root',
        mode    => '640',
    }
}
