require_relative 'bike'

class DockingStation
attr_reader :dock, :bike


  def release_bike
    if @bike.is_a? Bike
      @bike
    else
      fail 'No bikes available'
    end
  end


  def dock(bike)
    if @bike.is_a? Bike
      fail 'No dock space'
    else
    @bike = bike
    end
  end



end
