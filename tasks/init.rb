#!/opt/puppetlabs/puppet/bin/ruby
require 'open3'
require 'puppet'

begin
  Puppet.initialize_settings
  @configfile = Puppet::settings['config']
  x = ::Puppet::Resource.new('ini_setting', 'noop', :parameters => {'ensure' => 'absent','path' => @configfile,'section' => 'agent','setting' => 'noop', 'value' => 'false'})
  result, report = ::Puppet::Resource.indirection.save(x)
  cmd_string = "puppet config print noop --section agent"
  _stdout, stderr, status = Open3.capture3(cmd_string)
  puts "Noop is now #{_stdout}"
rescue => e
  raise "Could not manage noop: #{e.to_s}"
end
