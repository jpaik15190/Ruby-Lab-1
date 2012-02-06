#!/usr/bin/env ruby

#12. Opening two files with double_open
def double_open(first, second)
	open(first) do |f1|
		open(second) do |f2|
			until f1.eof? or f2.eof?
				yield f1, f2
			end
		end
	end
end

#code
double_open("1.txt", "2.txt") do |f1, f2|
	puts f1.readline.rstrip + " | " + f2.readline
end