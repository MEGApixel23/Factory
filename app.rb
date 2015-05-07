require_relative 'classes/Factory'

Test = Factory.new(:name) {p 'New class created'}
test = Test.new 123

puts test[0]
puts test['name']
puts test.name
puts test.name