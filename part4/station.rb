class Station
  attr_reader :station_name, :trains

  def initialize(station_name)
    @station_name = station_name
    @trains = []
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

  private

  def train_at_the_station
    puts "Trains: #{trains}"
  end
end