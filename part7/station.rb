class Station
  attr_reader :station_name, :trains
  def initialize(station_name)
    @station_name = station_name
    @trains = []
    validate!
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
    trains.select{ |trains| trains.type == type }
  end
  def train_at_the_station
    puts "Trains: #{ trains }"
  end
  def valid?
    validate!
  rescue
    false
  end

  protected
  def validate!
    raise "Name can't be nill" if @station_name.nil?
    raise "Name should be no more than 6 symbols" if @station_name.length > 6
    raise "Name has invalid format" if @station_name !~ /^[a-z]/i
  end
end