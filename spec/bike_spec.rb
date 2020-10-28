require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }
end

# it "responds to working?" do
# expect(subject).to respond_to :working?
