require 'serverspec'
require 'pathname'
### include requirements ###

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.host  = ENV['TARGET_HOST']
  c.os    = backend.check_os
end
