require_relative 'Factory/Factory.rb'
require_relative 'Factory/version.rb'

=begin
Test = Factory::Factory.new(:name) {p 'New class created'}
test = Test.new 123
puts test[0]
puts test['name']
puts test.name
=end