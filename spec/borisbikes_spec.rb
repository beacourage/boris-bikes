require 'borrisbikes'

describe DockingStation do

   it { is_expected.to respond_to(:release_bike)}

   it 'release a working bike' do
     docking_station = DockingStation.new
     expect(docking_station.release_bike.working?).to eq true
   end

 #Putting different bikes in docking station

   it 'will dock a bike (responding to the dock method)' do
     bike = DockingStation.new
     expect(bike).to respond_to(:dock).with(1).argument
   end

end

   # it { is_expected.to respond_to(:dock).with(1).argument}

#docking_station = DockingStation.new
