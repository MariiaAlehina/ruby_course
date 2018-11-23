class PassengerCar < Car
  def initialize(count_seats, type = "passenger")
    super(type)
    @count_seats = count_seats
    @take_seat = 0
  end
  def take_seats(n)
    self.take_seat = @take_seat + n
  end
  def occupied_seats
    puts "Occupied seats: #{ @take_seat }"
  end
  def free_seats
    free_seat = @count_seats - take_seat
    puts "Free seats: #{ @free_seat }"
  end
end