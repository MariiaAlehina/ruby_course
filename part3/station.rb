# Класс Station (Станция):
# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).

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





