# Cookbook Name:: tomcat
# Recipe:: default
#

unless platform_family?('rhel')
  Chef::Application.fatal!("Cookbook incompatible with #{platform_family?}")
end

# Install Java using Opscode Java cookbook
include_recipe 'java'

# Only support Ark driven binary tarball install presently
include_recipe 'tomcat::_ark'
