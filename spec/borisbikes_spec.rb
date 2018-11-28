require 'borrisbikes'

describe DockingStation do

   it { is_expected.to respond_to(:release_bike)}

   it 'release a working bike' do
     docking_station = DockingStation.new
     expect(docking_station.release_bike.working?).to eq true
   end

end

#docking_station = DockingStation.new
