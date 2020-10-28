require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    # return the bike we just docked
    expect(subject.bike).to eq bike
  end

end

# it "responds to release_bike" do
# expect(subject).to respond_to :release_bike

# { is_expected.to respond_to(:dock).with(1).argument }
# { is_expected.to respond_to(:bike)}
