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
# station = Station.new("STATION")
# station2 = Station.new("STATION2")
# station3 = Station.new("STATION3")
# route = Route.new("DEPO1", "DEPO2")
# cargo_train = CargoTrain.new(8, 10)
# passenger_train = PassengerTrain.new(65, 25)
# passenger_car = PassengerCar.new
# cargo_car = CargoCar.new
# cargo_train.add_car(cargo_car)
# passenger_train.add_car(passenger_car)
# cargo_train.hook_cars
# passenger_train.unhook_cars
# passenger_train.to_go(station)
# station2.train_at_the_station
puts "Name station:"
station_name = gets.chomp
stations << Station.new(station_name)
puts "New station #{station_name}"
puts "Number train:"
number = gets.chomp
puts "Type train:"
type = gets.chomp
puts "Count cars train:"
count_cars = gets.chomp
trains << Train.new(number, type, count_cars)
puts "New train #{number}"
