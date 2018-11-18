class Station

  attr_reader :station_name, :trains

  def initialize(station_name)
    @station_name = station_name
    @trains = []
  end

  def new_train(train)
    trains << train
  end

  def train_at_the_station
    puts "Trains: #{trains}"
  end

  def remove_train (train)
    trains.delete(train)
  end

  def train_with_one_type(type)
    trains.select{|trains| trains.type == type}
  end

end

class Route
  attr_accessor :train_route, :station_name

  def initialize(first_station, last_station)
    @train_route = [first_station, last_station]
  end

  def intermediate_station(station)
    @train_route.insert(-2, station.station_name)
  end

  def delete_intermediate_st(station)
    @train_route.delete(station)
  end

  def show_route
    puts "#{@train_route}"
  end

end

class Train2

  attr_accessor :train_route, :station, :station_name
  attr_reader :type

  def initialize(number, type, count_cars)
    @number =number
    @type = type
    @count_cars = count_cars.to_i
  end

  def speed=(speed)
    @speed = speed.to_i
  end

  def show_speed
    puts "#{@speed}"
  end

  def brake
    @speed = 0
  end

  def show_count_cars
    puts "#{@count_cars}"
  end

  def hook_cars
    @count_cars = @count_cars + 1 if @speed == 0
  end

  def unhook_cars
    if @speed == 0
      @count_cars = @count_cars - 1
    end
  end

  def tr_route(route)
    @train_route = route.train_route
  end

  def go_to(station)
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

end