#!/usr/bin/env ruby

raise ArgumentError, "Needs 2 argument" if ARGV.length < 2


a = ARGV[0].downcase
b = ARGV[1].downcase

puts "Ciao #{a} #{b}"