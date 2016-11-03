require 'test_helper'

class HospitalTest < ActiveSupport::TestCase
  test "attributes must not be empty" do
  	h = Hospital.new
  	assert h.invalid?
  	assert h.errors[:name].any?
  	assert h.errors[:location].any?
  end

  test "name length must not be more than 50 characters" do
  	h = Hospital.new
  	h.name = "a" * 51
  	assert h.invalid?
  	assert_equal ["is too long (maximum is 50 characters)"], h.errors[:name]
  end
end
