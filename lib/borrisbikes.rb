require_relative 'bike'

class DockingStation
attr_reader :dock

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  def bike
  	@bike 
  end

end
