class Route
  attr_accessor :train_route, :station_name

  def initialize(first_station, last_station)
    @train_route = [first_station, last_station]
  end

  def intermediate_station(station)
    @train_route.insert(-2, station.station_name)
  end

  def delete_intermediate_st(station)
    @train_route.delete(station)
  end

  protected

  def show_route
    puts "#{@train_route}"
  end
end

