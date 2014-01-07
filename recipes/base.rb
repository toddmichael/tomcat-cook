# Cookbook Name:: tomcat
# Recipe:: base
#

unless platform_family?('rhel')
  Chef::Application.fatal!("Cookbook incompatible with #{platform_family?}")
end

# Only support Ark driven binary tarball install presently
include_recipe 'tomcat::_ark'
