# Product
class Car
  attr_accessor :model, :engine, :transmission, :body

  def initialize(model, engine, transmission, body)
    @model = model
    @engine = engine
    @transmission = transmission
    @body = body
  end
end

# Builder
class CarBuilder
  attr_reader :car

  def create_new_car
    @car = Car.new("", "", "", "")
  end

  def add_model(model)
    @car.model = model
  end

  def add_engine(engine)
    @car.engine = engine
  end

  def add_transmission(transmission)
    @car.transmission = transmission
  end

  def add_body(body)
    @car.body = body
  end
end

# Director
class CarDirector
  attr_reader :builder

  def initialize(builder)
    @builder = builder
  end

  def build_sports_car
    @builder.create_new_car
    @builder.add_model("Спортивная машина")
    @builder.add_engine("V8")
    @builder.add_transmission("Руководство")
    @builder.add_body("Двухместный")
    @builder.car
  end

  def build_suv
    @builder.create_new_car
    @builder.add_model("спортивный внедорожник")
    @builder.add_engine("V6")
    @builder.add_transmission("автоматический")
    @builder.add_body("Четырехместный")
    @builder.car
  end
end

# Example usage
builder = CarBuilder.new
director = CarDirector.new(builder)

sports_car = director.build_sports_car
puts sports_car.model #=> "Sports Car"
puts sports_car.engine #=> "V8"
puts sports_car.transmission #=> "Manual"
puts sports_car.body #=> "Two-seater"

suv = director.build_suv
puts suv.model #=> "SUV"
puts suv.engine #=> "V6"
puts suv.transmission #=> "Automatic"
puts suv.body #=> "Four-seater"
