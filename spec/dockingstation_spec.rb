require 'dockingstation'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  let(:bike) { Bike.new }
    it 'docking_station responds to release_bike' do
      expect(docking_station).to respond_to(:release_bike)
    end

    describe '#release_bike' do
      it 'gets a bike' do
        docking_station.stored_bikes[0] = "bike"
        expect(docking_station.release_bike).to be_an_instance_of(Bike)
      end

      it 'checks bike working' do
        expect(bike.working?).to eq true
      end
    end

    it 'docking_station responds to return_bike' do
      expect(docking_station).to respond_to (:return_bike)
    end

    it 'has no bikes in docking station' do
      expect(docking_station.stored_bikes).to be_empty
    end

    it 'returns bike to docking station' do
      expect(docking_station.return_bike(bike)).not_to be_empty
    end
end

RSpec.describe "release_bike cannot give a bike when @stored_bikes is empty" do
  subject(:docking_station) { DockingStation.new }
  let(:stored_bikes) { [] }
    it "raises error" do
      expect { docking_station.release_bike }.to raise_error(RuntimeError)
    end
end

RSpec.describe "return_bike cannot store a bike when @stored_bikes is full" do
  subject(:docking_station) { DockingStation.new }
  it 'raises an error when full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.return_bike Bike.new }
    expect { subject.return_bike Bike.new }.to raise_error "Docking station full"
  end
end 

describe 'initialization' do
  it "has a variable capacity" do
    docking_station = DockingStation.new(50)
    50.times { docking_station.return_bike Bike.new}
    expect { docking_station.return_bike Bike.new }.to raise_error 'Docking station full'
  end
end

