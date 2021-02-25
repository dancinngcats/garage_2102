class Owner
  attr_reader :name,
              :occupation,
              :cars

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
    @vintage_cars = []
  end


  def buy(car_info)
    # cars_catalogue.each do |car|
    # if car_info.first == car.year &&
    # if car_info.split(' ')[1..-1].join(' ') == car.description
    # return car

    @cars << car_info
  end

  def vintage_cars
    @cars.map do |car|
      car.age >= 25
  end


end
