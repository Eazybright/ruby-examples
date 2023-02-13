#!/usr/bin/ruby

=begin
When you access any key in a hash that has a default value, if the key or value doesn't exist, 
accessing the hash will return the default value −
=end
months = Hash.new( "month" )
puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]
puts "#{H['a']}"
puts "#{H['b']}"