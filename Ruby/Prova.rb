#!/usr/bin/env ruby -wU

require_relative 'Test'

=begin rdoc
Args control
=end
raise ArgumentError, "Needs 2 argument" if ARGV.length < 2

mt = Test::MoreTest.new ARGV[0].downcase, ARGV[1].downcase, 18
printf "%s %s is %d years old\n", mt.fname, mt.sname, mt.age if mt.age >= 18
mt.age=17
printf "%s %s is %d a minor\n", mt.fname, mt.sname, mt.age unless mt.age >= 18

# begin
#     t.priv('a')
# rescue NoMethodError
#     STDERR.puts "Exeption: #{$!}"
# end