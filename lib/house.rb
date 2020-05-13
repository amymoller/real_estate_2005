require './lib/room'
class House

  attr reader :price,
              :address,
              :rooms

  def initialize(price, address, rooms)
    @price = price
    @address = address
    @rooms = rooms
  end

  def add_room
    @rooms = (room_1, room_2, room_3, room_4)
  end

  def area
    @length * @width
  end

  def above_market_average?
    if @price > $500000
      true
    else
      false
    end
  end

end
