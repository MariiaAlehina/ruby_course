require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'car'
require_relative 'сargo_train'
require_relative 'сargo_сar'
require_relative 'passenger_train'
require_relative 'passenger_car'
require_relative 'company'

station = Station.new("STATION")
station2 = Station.new("STATION2")
station3 = Station.new("STATION3")
route = Route.new("DEPO1", "DEPO2")
cargo_train = CargoTrain.new(8, 10)
passenger_train = PassengerTrain.new(65, 25)
passenger_car = PassengerCar.new
cargo_car = CargoCar.new
cargo_train.add_car(cargo_car)
passenger_train.add_car(passenger_car)
cargo_train.hook_cars
passenger_train.unhook_cars
passenger_train.to_go(station)
station2.train_at_the_station
cargo_car.company("z")

