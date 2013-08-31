class puppet::rsyslog::server(
    $logdir = '/var/log/puppet'
) {
    class {
        puppet::rsyslog::master:
            local_logging => true,
            remote_logging => false,
            logdir => $logdir;
        puppet::rsyslog::client:
            local_logging => true,
            remote_logging => false,
            logdir => $logdir;
    }
}
