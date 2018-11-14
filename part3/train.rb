# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов,
# эти данные указываются при создании экземпляра класса
# Может набирать скорость
# Может показывать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)
# Может показывать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
# Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Может принимать маршрут следования (объект класса Route)
# Может перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута


class Train

  # attr_reader :route

  def initialize(number, type, count_cars, *route)
    @number =number
    @type = type
    @count_cars = count_cars.to_i
    @station_id = 0
    @route = route
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
    route[@station_id]
  end

  # def to_next_station
  #   route[@station_id+1]
  # end

  def next_station
    route[@station_id+1]
  end

  def previous_station
    route[@station_id-1]
  end

  def move
    @station_id+=1
  end

end