#!/usr/bin/ruby

names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20

names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

nums = Array.[](1, 2, 3, 4,5)
puts "#{nums}"

nums = Array[1, 2, 3, 4,5]
puts "#{nums}"

digits = Array(0..9)
puts "#{digits}"

digits = Array(0...9)
puts "#{digits}"