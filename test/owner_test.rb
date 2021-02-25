require_relative 'test_helper'

class OwnerTest < Minitest::Test

  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')

    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    @car_2 = Car.new({description: 'Silver BMW 3-Series', year: 2001})
    @car_3 = Car.new({description: 'Red Chevrolet Corvette', year: 1963})
  end

  def test_it_exists
    assert_instance_of Owner, @owner_1
  end

  def test_it_has_attributes
    assert_equal "Regina George", @owner_1.name
    assert_equal "Heiress", @owner_1.occupation
  end

  def test_it_can_return_cars
    assert_equal [], @owner_1.cars

    @owner_1.buy('1967 Green Ford Mustang')

    assert_equal [@car_1], @owner_1.cars

    @owner_1.buy('2001 Silver BMW 3-Series')

    assert_equal [@car_1, @car_2], @owner_1.cars
  end

  def test_it_can_buy_a_car
    assert_equal @car_1, @owner_1.buy('1967 Green Ford Mustang')
  end

  def test_it_can_return_vintage_cars
    @owner_1.buy('1967 Green Ford Mustang')
    @owner_1.buy('2001 Silver BMW 3-Series')
    @owner_1.buy('1963 Red Chevrolet Corvette')

    assert_equal [@car_1, @car_3]
  end
end
