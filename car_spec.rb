require('minitest/autorun')
require('minitest/rg')
require_relative('car')

class TestCar < Minitest::Test

def test_accelerate
car = Car.new('red', 'ferrari', 100, 0)
car.accelerate()
assert_equal(95, car.fuel_level)
assert_equal(10, car.speed)
end

def test_brake
car = Car.new('red', 'ferrari', 95, 10)
car.brake()
assert_equal(0, car.speed)
end

def test_brake__unsuccessful
  car = Car.new('red', 'ferrari', 95, 1)
  message = car.brake()
  assert_equal("not enough speed to brake", message)
end

def test_brake__successful
  car = Car.new('red', 'ferrari', 95, 11)
  message = car.brake()
  assert_equal("braking", message)
end

end