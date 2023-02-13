#!/usr/bin/ruby -w

class Car
   @@no_of_tyres = 4
end

class Customer
   @@no_of_customers = 0

   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
end

class Sample
   def hello
      puts "Hello Ruby!"
   end
end

# Now using above class to create objects
object = Sample. new
object.hello

# create object of Car class
car1 = Car. new
car2 = Car. new

# create object of Customer class with parameters
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
