#!/usr/bin/env ruby -wU

=begin rdoc
Test Module for Ruby
=end
module Test
=begin rdoc
Test class for Ruby
=end
    class Test
        attr_accessor :fname, :sname

         def initialize(fname,sname)
            @fname = fname
            @sname = sname
         end

         protected
=begin rdoc
Test for rotected function
=end
         def prv(t)
             p t
         end
    end

    class MoreTest < Test
        attr_accessor :age

        def initialize(fname, sname,age)
            @age = age
            super fname, sname
        end
    end   
end