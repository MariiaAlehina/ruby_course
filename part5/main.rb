require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'car'
require_relative 'CargoTrain'
require_relative 'CargoCar'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'
require_relative 'company'

st = Station.new("STATION")
st2 = Station.new("STATION2")
st3 = Station.new("STATION3")
r = Route.new("DEPO1", "DEPO2")
ctr = CargoTrain.new(8, 10)
ptr = PassengerTrain.new(65, 25)
pcar = PassengerCar.new
ccar = CargoCar.new
ctr.addCar(ccar)
ptr.addCar(pcar)
ctr.hook_cars
ptr.unhook_cars
ptr.to_go(st)
st2.train_at_the_station
ctr.company=("z")

