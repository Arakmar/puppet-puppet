class puppet::rsyslog::client(
    $remote_logging => false,
    $local_logging => true,
    $server => '127.0.0.1',
    $logdir => '/var/log/puppet'
) {
    file { '/etc/rsyslog.d/puppet-agent.conf':
        content => template('puppet-puppet/rsyslog/client/puppet-agent.conf'),
        owner   => 'root',
        group   => 'root',
        mode    => '640',
    }
}
