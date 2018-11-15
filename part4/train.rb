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

  def show_cars
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
    @route = route
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