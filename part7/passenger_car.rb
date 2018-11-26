class PassengerCar < Car
  def initialize(count_seats, type = "passenger")
    super(type)
    @count_seats = count_seats
    @take_seat = 0
  end
  def take_seats
    raise "There are no more empty seats" if @take_seat == @count_seats
    @take_seat += 1
  end
  def occupied_seats
    puts "Occupied seats: #{ @take_seat }"
  end
  def free_seats
    free_seats = @count_seats - @take_seat
    puts "Free seats: #{free_seats}"
  end
end