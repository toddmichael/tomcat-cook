# Cookbook Name:: tomcat
# Recipe:: _java
#

tomcat_version = node[:tomcat][:version].to_i
java_version = node[:java][:jdk_version].to_i

# tomcat 8 requires java >= 7
# http://tomcat.apache.org/migration-8.html#Java_7_required
if tomcat_version == 8 and java_version < 7
  Chef::Application.fatal!("Tomcat 8 requires Java >= 7. You have Java #{java_version}")
end

include_recipe 'java'
