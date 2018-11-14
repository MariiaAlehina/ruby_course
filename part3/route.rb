# Имеет начальную и конечную станцию, а также список промежуточных станций.
# Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной


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
