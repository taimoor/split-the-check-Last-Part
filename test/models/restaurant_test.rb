require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test 'name cannot be blank' do
    restaurant = Restaurant.new(address: 'address', city: 'test')
    assert_not restaurant.save
    assert_equal restaurant.errors.count, 1
    assert_equal restaurant.errors[:name][0], "can't be blank"   
  end

  test 'address cannot be blank' do
    restaurant = Restaurant.new(name: 'name', city: 'test2')
    assert_not restaurant.save
    assert_equal restaurant.errors.count, 1
    assert_equal restaurant.errors[:address][0], "can't be blank"
  end

end
