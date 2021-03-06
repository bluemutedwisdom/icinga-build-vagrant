node default {
  hiera_include('classes', [])

  # TODO: replace functionality with profiles
  # this mimics the behavior of the customer2 module
  # ensure_packages(hiera_array('packages', []))
  create_resources('package', hiera_hash('package', {}))
  create_resources('apt::source', hiera_hash('apt::source', {}))
  create_resources('user', hiera_hash('user', {}))
  create_resources('group', hiera_hash('group', {}))
  create_resources('exec', hiera_hash('exec', {}))
  create_resources('file', hiera_hash('file', {}))
  create_resources('cron', hiera_hash('cron', {}))
  create_resources('apache::custom_config', hiera_hash('apache::custom_config', {}))
  create_resources('jenkins::plugin', hiera_hash('jenkins::plugin', {}))
}
