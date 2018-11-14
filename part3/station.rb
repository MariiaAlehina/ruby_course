# Класс Station (Станция):
#
#     Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).

class Station

  attr_reader :name, :train
  # atttr_writer :train

  def initialize(name)
    @name = name
    @trains = []

  end


  def new_train( train)

  trains << train

  end

  def train_online(trains)

    puts "Trains: #{@train}"
  end


  # def train_type(type)
  #   trains.select{|train| train.type == type }.join('')
  # end
  #


  def remove_train (train)
    remove_instance_variable(:@train)
  end

end





