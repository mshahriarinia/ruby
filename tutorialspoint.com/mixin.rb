#!/usr/bin/ruby

module A
   def a1
   end
   def a2
   end

   def b2
       puts "A.b2"
   end
end
module B
   def b1
   end
   def b2
       puts "B.b2"
   end
end

class Sample
    include B
    include A
#include B
   def s1
   end
end

samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
