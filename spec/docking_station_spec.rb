require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { expect(DockingStation.new.release_bike).is_a?(Bike) }
  it { expect(Bike.new.working?).to eq(true) }
  it { is_expected.to respond_to :dock }
  it "checks if station has a docked bike" do
    bike = subject.release_bike
    expect(subject.dock(bike)).is_a?(Bike)
  end
end

# it "responds to release_bike" do
  # expect(subject).to respond_to :release_bike

# it "release_bike returns a bike" do
#  expect(DockingStation.new.release_bike).is_a?(Bike)
