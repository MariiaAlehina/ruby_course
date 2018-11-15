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

  def initialize(first_station, last_station)
    @route = [first_station, last_station]
  end

  def intermediate_station (station)
    @route.insert(-2, station)
  end

  def delete_intermediate_st(station)
    @route.delete(station)
  end

  def show_route
    puts "#{@route}"
  end

end

class Train

  attr_reader :route, :type

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

  def train_route(route)
    @route = route
  end

  def train_station
    self.station_name
  end

  def next_station
    route[1]
  end

  def previous_station
    route[-1]
  end

  def move(station)

  end

end


