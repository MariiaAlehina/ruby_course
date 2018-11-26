class PassengerTrain < Train
  def initialize(number, count_cars, type = "passenger")
    super
  end

  def add_car(car)
    if car.instance_of?(PassengerCar)
      super(car)
    else
      puts "This train only for passengers"
    end
  end
end
