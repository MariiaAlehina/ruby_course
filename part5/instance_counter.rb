module InstanceCounter

  def self.instances
    ObjectSpace.each_object(self).count
  end

  def register_instance

  end

end