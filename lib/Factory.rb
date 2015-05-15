require_relative 'Factory/Factory.rb'
require_relative 'Factory/version.rb'


Test = Factory::Factory.new(:name) {p 'New class created'}
test = Test.new 123

=begin
puts test[0]
puts test['name']
puts test.name
=en