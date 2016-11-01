class Patient < ActiveRecord::Base
	belongs_to :physician
	has_one :hospital, through: :physician
end
