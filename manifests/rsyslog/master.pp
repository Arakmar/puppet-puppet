class puppet::rsyslog::master(
    $remote_logging = false,
    $local_logging = true,
    $server = '127.0.0.1',
    $force_udp = false,
    $logdir = '/var/log/puppet'
) {
    file { '/etc/rsyslog.d/puppet-master.conf':
        content => template('puppet/rsyslog/puppet-master.conf'),
        owner   => 'root',
        group   => 'root',
        mode    => '640',
    }
}
