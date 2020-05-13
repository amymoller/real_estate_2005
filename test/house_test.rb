require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_it_has_an_address
    skip
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_it_has_rooms
    skip
    house = House.new("$400000", "123 sugar lane")

    house.add_room(room_1)
    room_1 = Room.new(:bedroom, 10, '13')
    house.add_room(room_2)
    room_2 = Room.new(:bedroom, 11, '15')
  end

  def test_it_is_above_market_average
    skip
    house = House.new("$400000", "123 sugar lane")
    refute house.above_market_average?
  end

  def test_it_has_new_rooms
    skip
    house = House.new("$400000", "123 sugar lane")

    house.add_room(room_3)
    room_3 = Room.new(:living_room, 25, '15')
    house.add_room(room_4)
    room_4 = Room.new(:basement, 30, '41')
  end

  def test_it_has_an_area
    skip
    house = House.new("$400000", "123 sugar lane")
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    assert_equal 1900, house.area
  end

  def test_it_has_new_details
    skip
    house = House.new("$400000", "123 sugar lane")
    house.details = {:price => 400000, :address => "123 sugar lane"}
  end

end
