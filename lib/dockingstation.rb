require_relative './bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  attr_reader :stored_bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      fail "ERROR: There are no bikes."
    else
      Bike.new
    end
  end

  def return_bike(bike)
    fail 'Docking station full' if full?
    @stored_bikes << bike
  end

  private

  def full?
    @stored_bikes.count >= @capacity
  end

  def empty?
    @stored_bikes.count == 0
  end
end