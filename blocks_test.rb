#!/usr/bin/ruby
puts "=========block statement======\n"
def test
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test { puts "You are in the block" }

puts "=========block statement with parameter======\n"
def testWithParams
    yield 5
    puts "You are in the method testWithParams"
    yield 100
end
testWithParams {|i| puts "You are in the block #{i}"}

puts "=========BEGIN and END blocks======\n"
BEGIN { 
    # BEGIN block code 
    puts "BEGIN code block"
} 
 
END { 
    # END block code 
    puts "END code block"
}
    # MAIN block code 
puts "MAIN code block"