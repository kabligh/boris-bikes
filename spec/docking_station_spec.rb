require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike) }

    it 'raises an error when no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

  end

  # describe '#working?' do

  #  it 'releases working bikes' do
  #    subject.dock(Bike.new)
  #    bike = subject.release_bike
  #    expect(bike).to respond_to(:working?)
  #  end

  # end

  describe '#dock' do

  #  it 'docks bike at docking station' do
  #    bike = Bike.new
  #    station = DockingStation.new
  #    expect(station.dock(bike)).to eq bike
  #  end

    it 'raises an error when docking station is full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end

  end
end
