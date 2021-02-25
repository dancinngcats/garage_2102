class Garage
  attr_reader :name

  def initialize(name)
    @name = name
    @customers = []
    @all_cars = []
    @cars_by_make = {}
  end

  def add_customer(customer)
    @customers << customer
  end

  def all_cars
    @customers.map do |customer|
      @all_cars << customer.cars
    end.flatten
  end
end
