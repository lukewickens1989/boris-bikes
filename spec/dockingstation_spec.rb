require 'dockingstation'

describe DockingStation do
  subject(:docking_station) { described_class.new }
    it 'docking_station responds to release_bike' do
      expect(docking_station).to respond_to (:release_bike)
    end
end
