# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/server1"

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}

# Advertise must be set to a non-loopback address.
# Defaults to the resolving the local hostname.
advertise {
    http = "localhost"
    rpc  = "localhost"
    serf = "localhost"
}
