resource "datadog_monitor" "hello_world_monitor" {
  name               = "test_log_monitor"
  type               = "log alert"
  tags               = "${concat(list("env:prod"), local.default_tags)}"
  message            = <<EOT
hello_world_monitor
  EOT
  

  query = <<EOT
 logs("source:wordpress-env @status:>=500").index("main").rollup("count").last("5m") > 3 
EOT

  thresholds {
    critical = 3
  }
  silenced {
    "*" =  false ## unmute or not
  }
}