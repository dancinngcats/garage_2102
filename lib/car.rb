class Car
  attr_reader :color,
              :make,
              :model,
              :year


  def initialize(info)
    @description = info[:description]
    @color = @description.split(" ")[0]
    @make = @description.split(" ")[1]
    @model = @description.split(" ")[2]
    @year = info[:year]
  end

  def age
    2021 - @year.to_i
  end

end
