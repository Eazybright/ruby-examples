#!/usr/bin/ruby

# method declaration with parameters
def test(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
end
test "C", "C++"
test

# return value from methods. The last delcared value will be returned
def test2
    i = 100
    j = 10
    k = 0
end
var = test2
puts var

# return statement
def test3
    i = 100
    j = 200
    k = 300
    return i,j,k
end
var = test3
puts var

# Variable number of parameters
def sampleVariableParemeter(*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
       puts "The parameters are #{test[i]}"
    end
end
sampleVariableParemeter "Zara", "6", "F"
sampleVariableParemeter "Mac", "36", "M", "MCA"