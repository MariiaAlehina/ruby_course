
check = Hash.new
total_price = Hash.new
name = "0"
all_product_sum = 0

loop do

  print"Product name:"
  name = gets.chomp.to_s
  break if name == "stop"

  print"Product price:"
  price = gets.chomp.to_f

  print"Amount of products:"
  amount = gets.chomp.to_i

  product_sum = price * amount

  all_product_sum +=product_sum
  check[name] = { product_price: price, amount_of_products: amount, product_sum: product_sum }
  total_price = {product: check[name]}


  end

puts check
puts "#{all_product_sum}"