class Station 
    attr_reader :name
    attr_reader :trains

    def initialize(name)
      @name = name
      @trains = []
    end

    def arrival(train)
      @trains << train
    end

    def list
      @trains.each{ |t| puts t}
    end
    
    def type(type)
      @trains.select{ |t|  t.type == type}
    end

    def delete(train)
      @trains.delete(train)
    end
end



