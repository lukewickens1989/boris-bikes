require_relative './bike.rb'

class DockingStation

  attr_reader :stored_bikes

  def initialize
    @stored_bikes = [Bike.new]
  end

  def release_bike
    @bike = @stored_bikes.pop
  end

  def return_bike
    @stored_bikes << @bike
  end



end
