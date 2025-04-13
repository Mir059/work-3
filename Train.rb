class Train 
  attr_accessor :speed
  attr_accessor :wagons
  attr_reader :route
  attr_reader :current_station
  attr_reader :type

  def initialize(number,type,wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def stop 
    self.speed = 0 
  end

  def add_wagons
    self.wagons += 1 if self.speed == 0 
  end

  def del_wagons
    self.wagons -= 1 if self.speed == 0 
  end

  def add_route(route)
    @route = route 
    @current_station_index = 0 
  end
  
  def go_next_station 
    @current_station_index += 1 if next_station
  end
  
  def go_previous_station 
    @current_station_index -= 1 if previous_station
  end

  def current_station 
    @route.stations[@current_station_index]
  end

  def next_station 
    @route.stations[@current_station_index + 1]
  end

  def previous_station 
    @route.stations[@current_station_index - 1]
  end
  
end

