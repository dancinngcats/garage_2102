class Owner
  attr_reader :name,
              :occupation

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
    @vintage_cars = []
    @car = {}
  end


  def buy(car_info)
        car[:description] = car_info.split(' ')[1..-1].join(' ')
        car[:year] = car_info.split.first
  end

  def vintage_cars
    @cars.map do |car|
      car.age >= 25
    end
  end
end
