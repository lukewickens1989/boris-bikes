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

  def return_bike(bike)
    fail 'Docking station full' if @stored_bikes.count >= 20
    @stored_bikes << bike
    # @bikes = bike
    # if @stored_bikes.length == 20
    #   fail "ERROR: Docking station is full"
    # else
    #   @stored_bikes << @bikes
  end



end
