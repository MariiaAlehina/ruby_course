class CargoTrain < Train
  def initialize(number, type = "cargo", count_cars)
    super
  end

  def add_car(car)
    if car.instance_of?(CargoCar)
      super(car)
    else
      puts "This train only for cargo"
    end
  end
end