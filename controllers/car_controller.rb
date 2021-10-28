require_relative '../services/car_service'
require_relative "../model/engine"
require_relative "../model/gearbox"
require_relative "../model/car"

class CarController
  attr_reader :car_service, :car, :engine, :gearbox

  def initialize(car)
    @car_service = CarService.new(car)
  end

  def start
    car_service.start
  end

  def stop
    car_service.stop
  end

  def gas
    car_service.gas
  end

  def g_up
    car_service.g_up
  end

  def g_down
    car_service.g_down
  end

  def breake
    car_service.breake
  end

  def car_state
    car_service.car_state
  end

  def shift_odo
    car_service.shift_odo
  end

  def shift_speed
    car_service.shift_speed
  end

  def car_state
    car_service.car_state
  end

end
