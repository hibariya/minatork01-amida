# coding: utf-8

require 'tapp'
require File.dirname(__FILE__) + '/../lib/amida'

Dir[File.dirname(__FILE__) + '/support/*'].each {|f| require f }

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
  #config.include ExampleGroupHelper
end
