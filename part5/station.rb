class Station

  attr_reader :station_name, :trains


  def initialize(station_name)
    @station_name = station_name
    @trains = []
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def new_train(train)
    trains << train
  end

  def remove_train (train)
    trains.delete(train)
  end

  def train_with_one_type(type)
    trains.select{|trains| trains.type == type}
  end

  def train_at_the_station
    puts "Trains: #{trains}"
  end

end