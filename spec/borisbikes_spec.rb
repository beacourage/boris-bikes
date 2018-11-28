require 'borrisbikes'
describe DockingStation do
   it { is_expected.to respond_to(:release_bike)}
end

#docking_station = DockingStation.new
