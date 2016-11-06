require 'test_helper'

class PhysicianTest < ActiveSupport::TestCase
  test "create patient through physician" do
  	assert_difference 'Patient.count', 1 do
  		physician = Physician.create(name: "Doolittle", specialty: "Opthamology")
  		p = physician.patients.create(name: "Dan", phone: "55578615", pregnancies: 0)
  		assert p.valid?
  	end
  end

  test "alphabetical" do
  	names_correct = %w[Alpha Beta Delta Eta Gamma]
  	ret = []
  	physicans = Physician.alphabetical
  	for physician in physicans do
  		ret << physician.name
  	end
  	assert_equal ret, names_correct
  end

  test "physican belongs to hospital" do
  	assert_equal physicians(:Alpha).hospital.name, "Hamad"
  end
end
