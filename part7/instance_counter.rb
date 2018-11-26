module InstanceCounter
    def self.instances
      ObjectSpace.each_object(self).count
    end
end
