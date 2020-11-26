class Bike

  def initialize

  end

  def working?(bike)
    puts "Is the bike working (yes or no)?"
    user_input = gets.chomp
    bike.working?(bike) == false if user_input == "no"
  end
end
