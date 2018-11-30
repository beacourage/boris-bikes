require 'borrisbikes'

describe DockingStation do

   it { is_expected.to respond_to(:release_bike)}

   it 'release a working bike' do
     docking_station = DockingStation.new
     bike = Bike.new
     docking_station.dock(bike)
     expect(docking_station.release_bike.working?).to eq true
   end

 #Putting different bikes in docking station

   it 'will dock a bike (responding to the dock method)' do
     docking_station = DockingStation.new
     expect(docking_station).to respond_to(:dock).with(1).argument
   end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end


  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises an error when there are no bikes to release' do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error('No bikes available')
  end

  it 'raises an error when no dock space available to dock bike' do
    docking_station = DockingStation.new
    20.times { docking_station.dock(Bike.new) }
    expect {docking_station.dock(Bike.new)}.to raise_error('No dock space')
  end

end
