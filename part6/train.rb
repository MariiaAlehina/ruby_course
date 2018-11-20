class Train
  # include Company
  include InstanceCounter

  attr_accessor :train_route, :station, :station_name, :cars, :speed
  attr_reader :type

  @@trains = []

  def initialize(number, type, count_cars)
    @number =number
    @type = type
    @count_cars = count_cars.to_i
    @cars = []
    @@trains[number] = self
  end

  def self.find(number)
    @@trains[number]
  end

  def add_car(car)
    cars << car
    puts "#{@cars}"
  end

  def hook_cars
    @count_cars = @count_cars + 1 if @speed == 0
    puts "#{@count_cars}"
  end

  def unhook_cars
    if @speed == 0
      @count_cars = @count_cars - 1
      puts "#{@count_cars}"
    end
  end

  def tr_route(route)
    @train_route = route.train_route
  end

  def to_go(station)
    @station_name = station.station_name
    station.new_train(self)
  end

  def train_station
    train_route_station = self.train_route.detect{|name|name == self.station_name}
    station_index = self.train_route.find_index(train_route_station)
    puts "The train is at the station #{self.station_name}"
    puts "Past station #{self.train_route[station_index - 1]}"
    puts "Previous station #{self.train_route[station_index + 1]}"
  end

  protected

  def speed=(speed)
    @speed = speed.to_i
  end

  def show_speed
    puts "#{@speed}"
  end

  def brake
    @speed = 0
  end

  private

  def show_count_cars
    puts "#{@count_cars}"
  end
end