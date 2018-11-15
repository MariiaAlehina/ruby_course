class Route

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def intermediate_station (station)
    @stations.insert(-2, station)
  end

  def delete_intr_st(station)
    @stations.delete(station)
  end

  def show
    puts "#{@stations}"
  end

end
