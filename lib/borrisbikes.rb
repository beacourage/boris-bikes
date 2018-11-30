require_relative 'bike'

class DockingStation
attr_reader :dock, :bike

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.is_a? Bike
      @bikes.pop
    else
      fail 'No bikes available'
    end
  end


  def dock(bike)
    if @bikes.count >= 20
      fail 'No dock space'
    else
    @bikes.push(bike)
    end
  end



end
