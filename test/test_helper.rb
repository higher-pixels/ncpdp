$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "ncpdp"
require 'test/unit'
require 'shoulda/context'
require 'active_support/all'
require 'byebug'

supportdir = Pathname.new(File.dirname(__FILE__))
Dir["#{supportdir}/support/**/*.rb"].each do |file|
  require Pathname.new(file).relative_path_from(supportdir)
end
