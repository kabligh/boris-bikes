require 'docking_station'
require_relative 'bike'

describe DockingStation do

  describe '#release_bike' do

    it { is_expected.to respond_to(:release_bike) }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike that is docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

  end

  describe '#working?' do
    it 'releases working bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to respond_to(:working?)
    end
  end

  describe '#dock' do
    it 'docks bike at docking station' do
      bike = Bike.new
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end
  end
end
