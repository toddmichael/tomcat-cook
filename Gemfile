source  'https://rubygems.org'

# berkshelf and test-kitchen conflicting presently so locked versions until worked out
gem 'berkshelf', ">= 2.0.10"
gem 'chef', ">= 11"

group "develop" do
  gem 'test-kitchen', ">= 1.0.0"
  gem 'kitchen-ec2'
  gem 'kitchen-vagrant', :git => "git://github.com/opscode/kitchen-vagrant"
  gem 'busser-bats'
  gem 'busser-serverspec'
  gem 'foodcritic', ">= 3.0.3"
  gem 'tailor'
  gem 'cane'
  gem 'guard'
  gem 'guard-rake'
  gem 'guard-kitchen'
  gem 'knife-cookbook-doc'
  gem 'chefspec'
  gem 'rspec'
end
