class Route
  attr_reader :stations
  
  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end
    
  def add(station)
    @stations.insert(1,station)
  end

  def delete(station) 
    @stations.delete(station)
  end

  def list 
    @stations.each { |s| puts s }
  end

end
