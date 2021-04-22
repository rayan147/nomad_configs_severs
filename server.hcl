# /etc/nomad.d/server.hcl

# data_dir tends to be environment specific.
data_dir = "/nomad/data"
log_level = "DEBUG"
datacenter = "dc1"
bind_addr = "192.168.0.37"


server {
  enabled          = true
  bootstrap_expect = 1
  job_gc_threshold = "1m"
  job_gc_interval =  "50s"
       #server_join  {
        # retry_join =  ["192.168.0.37:4647","192.168.0.30:4647","192.168.0.31:4647"]
               }
#}
consul {
  address = "192.168.0.37:8500"

}
telemetry {
  collection_interval = "1s"
  disable_hostname = true
  prometheus_metrics = true
  publish_allocation_metrics = true
  publish_node_metrics = true
}
