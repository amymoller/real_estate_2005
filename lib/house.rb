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
    @rooms = (room_1, room_2)
  end

end
