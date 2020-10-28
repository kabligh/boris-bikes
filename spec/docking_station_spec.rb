require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { expect(DockingStation.new.release_bike).is_a?(Bike) }
  it "returns true if bike is working" do
    expect(Bike.new.working?).to eq(true)
  end
end

# it "responds to release_bike" do
  # expect(subject).to respond_to :release_bike

# it "release_bike returns a bike" do
#  expect(DockingStation.new.release_bike).is_a?(Bike)
