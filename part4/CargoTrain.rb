class CargoTrain < Train
  def initialize(number, type = "cargo", count_cars)
    super
  end

  def addCar(car)
    if car.instance_of?(CargoCar)
      super(car)
    else
      puts "This train only for cargo"
    end
  end
end