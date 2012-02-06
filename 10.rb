#!/usr/bin/env ruby

#10. Experimenting with Enumerable methods that take a Block
my_array = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
puts "my_array = #{my_array}"
my_array.delete_if {|x| x < 50}
puts "my_array = #{my_array}"