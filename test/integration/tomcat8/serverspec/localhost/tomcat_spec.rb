require 'spec_helper'

# tomcat8 should be enabled and running
describe service('tomcat8') do
  it { should be_enabled }
  it { should be_running }
end
