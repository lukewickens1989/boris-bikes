require 'dockingstation'

describe DockingStation do
  subject(:docking_station) { described_class.new }
    it 'docking_station responds to release_bike' do
      expect(docking_station).to respond_to (:release_bike)
    end

    describe '#release_bike' do
      it 'gets a bike' do
        expect(docking_station.release_bike).to eq bike
      end
    end


end
