
check = Hash.new
total_price = Hash.new
name = "0"

while name != "stop" do

  print"Product name:"
  name = gets.chomp.to_s

  print"Product price:"
  price = gets.chomp.to_f

  print"Amount of products:"
  amount = gets.chomp.to_i

  product_sum = price * amount

  check[name] = { product_price: price, amount_of_products: amount, product_sum: product_sum }
  total_price = {product: check[name]}



end


puts check
puts "#{payment_amount}"