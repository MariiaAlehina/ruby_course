class CargoCar < Car
  def initialize(overall_volume, type = "cargo")
    super(type)
    @overall_volume = overall_volume
    @take_volume = 0
  end

  def take_volume
    raise "There are no more empty volume" if @take_volume == @overall_volume
    @take_volume += 1
  end

  def occupied_seats
    puts "Occupied seats: #{@take_volume}"
  end

  def free_volume
    free_volume = @overall_volume - @take_volume
    puts "Free volume: #{free_volume}"
  end
end
