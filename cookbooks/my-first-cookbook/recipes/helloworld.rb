rightscale_marker :begin

  log "Hello World"
  log "default: #{node.default_attrs.to_s}"
  log "normal: #{node.normal_attrs.to_s}"
  log "over: #{node.override_attrs.to_s}"

rightscale_marker :end
