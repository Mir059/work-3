class Train 
  attr_accessor :speed
  attr_accessor :wagons
  attr_accessor :route
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
  self.route = route 
  @current_station = route.stations[0]
  end

  def next_station (to_change)
  @current_station = self.route.stations[self.route.stations.index(@current_station).to_i+1] if to_change == "+1"
  @current_station = self.route.stations[self.route.stations.index(@current_station).to_i-1] if to_change == "-1"
  end

  def list_station
    puts "previous station #{self.route.stations[self.route.stations.index(@current_station).to_i-1]}"
    puts "current_station #{@current_station}"
    puts "next_station #{self.route.stations[self.route.stations.index(@current_station).to_i+1]}"
  end
end

train_one = Train.new(777,"pass",100)
train_one.add_route(route_one)
puts train_one.current_station

