
# a = 1
# b = 1
#
# 10.times{|i| c = a + b; a = b; b = c; puts c}



def f(i)
  i.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end
f(10)

puts f( 10 )