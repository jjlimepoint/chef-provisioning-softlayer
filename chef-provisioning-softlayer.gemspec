#
# Chef Provisioning driver for SoftLayer
#
# Authors:
#   * Zhongyu (Leo) Wu           <leow@ca.ibm.com>
#   * Emerging Technologies Team <imcloud@ca.ibm.com>
#     IBM Analytics Platform
#
# Copyright 2015, IBM Corporation
# All rights reserved
#

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/softlayer_driver/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning-softlayer'
  s.version = Chef::Provisioning::SoftlayerDriver::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.md', 'LICENSE' ]
  s.summary = 'IBM SoftLayer provisioner for chef-provisioning.'
  s.description = s.summary
  s.author = 'Leo Wu'
  s.email = 'leow@ca.ibm.com'
  s.homepage = 'http://my.imdemocloud.com'

  s.add_dependency "chef"
  s.add_dependency 'chef-provisioning'
  s.add_dependency 'softlayer_api'
  
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.bindir       = "bin"
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Rakefile LICENSE README.md CHANGELOG.md) + Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
