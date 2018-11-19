class PassengerTrain < Train

  def initialize(number, type = "passenger", count_cars)
    super
  end

  def addCar(car)
    if car.instance_of?(PassengerCar)
      super(car)
    else
      puts "This train only for passengers"
    end
  end
end