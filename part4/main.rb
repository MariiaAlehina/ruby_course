require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'car'
require_relative 'CargoTrain'
require_relative 'CargoCar'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'

st = Station.new("STATION")
st2 = Station.new("STATION2")
st3 = Station.new("STATION3")
r = Route.new("DEPO1", "DEPO2")
tr = Train.new(222, "passenger", 7)
pcar = Car.new("cargo")
# r.intermediate_station(st)
# r.intermediate_station(st2)
# r.intermediate_station(st3)
# tr.tr_route(r)
# tr.go_to(st2)
# tr.train_station
tr.addCar(pcar)