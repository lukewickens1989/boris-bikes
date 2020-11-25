require 'dockingstation'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  let(:bike) { Bike.new }
    it 'docking_station responds to release_bike' do
      expect(docking_station).to respond_to (:release_bike)
    end

    describe '#release_bike' do
      it 'gets a bike' do
        expect(docking_station.release_bike).to be_an_instance_of(Bike)
      end

      it 'checks bike working' do
        expect(bike.working?).to eq true
      end
    end



end
