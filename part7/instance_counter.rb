module InstanceCounter
    def self.instances
    ObjectSpace.each_object(self).count
    end

    # def register_instance
    # @@counter ||=0
    # @@counter +=1
    # end
end
