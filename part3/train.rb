class Station

  attr_reader :name, :trains

  def initialize(name, *trains)
    @name = name
    @trains = trains
    # @trains = {trains: type}
  end

  def new_train(train)
    trains << train
  end

  def train_at_the_station
    puts "Trains: #{@trains}"
  end

  def remove_train (train)
    trains.delete(train)
  end

  def train_with_one_type(tp)
    one_type_trains = trains.select{|trains, type| type == tp}
    puts"#{one_type_trains.keys}"
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

  attr_reader :route

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

  def train_route(*route)
    Route.@route = route
  end

  def train_station
    route[0]
  end

  # def to_next_station
  #   route[@station_id+1]
  # end

  def next_station
    route[1]
  end

  def previous_station
    route[i-1]
  end

  def move
    @station_id+=1
  end

end


