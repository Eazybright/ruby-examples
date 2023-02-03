#!/usr/bin/ruby

$i = 0
$num = 5

puts("======while statement========")
while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

$j = 0
$num2 = 5
puts("\n======while modifier========")
begin
   puts("Inside the loop j = #$j" )
   $j +=1
end while $j < $num2


$k = 0
$num3 = 5
puts("\n======until statement========")
until $k > $num3  do
   puts("Inside the loop k = #$k" )
   $k +=1;
end

$l = 0
$num4 = 5
puts("\n======until modifier========")
begin
   puts("Inside the loop l = #$l" )
   $l +=1;
end until $l > $num4

puts("\n======for loop========")
for i in 0..5
   puts "Value of local variable is #{i}"
end

puts("\n===== another example for for loop with syntax: (expression).each do |variable[, variable...]| code end====")
(0..5).each do |i|
   puts "Value of local variable is #{i}"
end
