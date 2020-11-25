require_relative './bike.rb'

class DockingStation

  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end

  def release_bike
    if @stored_bikes.empty?
      fail "ERROR: There are no bikes."
    else
      Bike.new
    end
  end

  def return_bike
    @stored_bikes << @bike
  end



end
