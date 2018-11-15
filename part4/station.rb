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





