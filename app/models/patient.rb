class Patient < ActiveRecord::Base
	belongs_to :physician
	has_one :hospital, through: :physician

	validates :name, :phone, :pregnancies, presence: true
	validates :pregnancies, numericality: {greater_than_or_equal_to: 0}
end
