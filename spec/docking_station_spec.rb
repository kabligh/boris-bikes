require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { expect(DockingStation.new.release_bike).is_a?(Bike) }
  it { expect(Bike.new.working?).to eq(true) }
  it { is_expected.to respond_to :dock_bike }
  it "checks if dock_bike has docked a bike" do
    bike = subject.release_bike
    expect(bike.dock_bike(bike)).is_a?(Bike)
  end
end

# it "responds to release_bike" do
  # expect(subject).to respond_to :release_bike

# it "release_bike returns a bike" do
#  expect(DockingStation.new.release_bike).is_a?(Bike)
