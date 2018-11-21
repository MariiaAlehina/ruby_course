class CargoCar < Car
  def initialize(type = "cargo", volume)
    super
    @volume = volume.to_i
  end

  def take_volume

  end

  def occupied_volume

  end

  def free_volume

  end
end