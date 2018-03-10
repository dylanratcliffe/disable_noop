#!/opt/puppetlabs/puppet/bin/ruby
require 'open3'
require 'puppet'

begin
  Puppet.initialize_settings
  @configfile = Puppet.settings['config']
  x = ::Puppet::Resource.new('ini_setting', 'noop', parameters: { ensure: 'absent', path: @configfile, section: 'agent', setting: 'noop' })
  _result, _report = ::Puppet::Resource.indirection.save(x)
  cmd_string = 'puppet config print noop --section agent'
  stdout, _stderr, _status = Open3.capture3(cmd_string)
  puts "Noop is now #{stdout}"
rescue => e
  raise "Could not manage noop: #{e}"
end
