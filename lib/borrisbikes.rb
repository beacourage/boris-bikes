require_relative 'bike'

class DockingStation
attr_reader :dock
  def release_bike
    Bike.new
  end

  def dock(bike)
    Bike.new
  end
end
