

class Station
  #
  # attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end


  def trains

  trains << train

  end

  def train_online(trains)

    puts "Trains: #{@trains}"
  end


  # def train_type()
  #   trains.find_all{|train| train.type == type }
  # end
  #
  # def train_go
  #
  # end

end





