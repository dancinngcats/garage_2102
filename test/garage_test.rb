require_relative 'test_helper'

class GarageTest < Minitest::Test

  def setup
    @garage = Garage.new('Totally Safe Parking')

    @owner_1 = Owner.new('Regina George', 'Heiress')
    @owner_2 = Owner.new('Glen Coco', 'Unknown')

    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    @car_2 = Car.new({description: 'Silver BMW 3-Series', year: 2001})
    @car_3 = Car.new({description: 'Red Chevrolet Corvette', year: 1963})
    @car_4 = Car.new({description: 'Blue Ford Escape', year: 2001})
  end

  def test_it_exists
    assert_instance_of Garage, @garge
  end

  def test_it_has_attributes
    assert_equal "Totally Safe Garage", @garage.name
  end

  def test_it_can_return_garage_customers
    @owner_1.buy('1967 Green Ford Mustang')
    @owner_1.buy('2001 Blue Ford Escape')
    @owner_2.buy('1963 Green Chevrolet Corvette')
    @owner_2.buy('2020 Silver Volvo XC90')

    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    assert_equal [@owner_1, @owner_2], @garage.customers
  end

  def test_it_can_return_all_cars
    @owner_1.buy('1967 Green Ford Mustang')
    @owner_1.buy('2001 Blue Ford Escape')
    @owner_2.buy('1963 Green Chevrolet Corvette')
    @owner_2.buy('2020 Silver Volvo XC90')

    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    assert_equal [@car_1], @garage.all_cars
  end
end
