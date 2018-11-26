class CargoTrain < Train
  def initialize(number, count_cars, type = "cargo")
    super
  end

  def add_car(car)
    if car.instance_of?(CargoCar)
      super(car)
    else
      puts 'This train only for cargo'
    end
  end
end