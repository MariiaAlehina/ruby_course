# a = 1
# b = 1
#
# 10.times{|i| c = a + b; a = b; b = c; puts c}

def f(i)
  return i if (0..1).include? i
  f(i-1) +f(i-2) if i>1
end

puts f( )