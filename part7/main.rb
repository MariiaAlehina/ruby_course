require_relative 'company'
require_relative 'instance_counter'
require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'car'
require_relative 'cargo_train'
require_relative 'cargo_car'
require_relative 'passenger_train'
require_relative 'passenger_car'

stations = []
trains = []
routes = []
cars = []
cargo_cars= []
passenger_cars = []

puts "Name station:"
station_name = gets.chomp
stations << Station.new(station_name)
puts "New station #{ station_name }"

puts "Number train:"
number = gets.chomp
puts "Type train:"
type = gets.chomp
puts "Count cars train:"
count_cars = gets.chomp
trains << Train.new(number, type, count_cars)
puts "New train #{ number }, type=#{ type }, count of cars=#{ count_cars }"

puts "First station for route:"
first_station = gets.chomp
puts "Last station for route:"
last_station = gets.chomp
routes << Route.new(first_station, last_station)
puts "New route #{ first_station } #{ last_station }"

puts "Type new car:"
type = gets.chomp
cars << Car.new(type)
puts "New car #{ type }"

puts "Volume new cargo car:"
overall_volume = gets.chomp
cargo_cars << CargoCar.new(overall_volume)
puts "New car with type: #{ type } have volume=#{ overall_volume }"

puts "Count of seats new passenger car:"
take_seat = gets.chomp
passenger_cars << CargoCar.new(take_seat, type = "passenger")
puts "New car with type: #{ type } have volume=#{ take_seat }"
