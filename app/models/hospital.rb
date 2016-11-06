class Hospital < ActiveRecord::Base
	has_many :physicians
	has_many :patients, through: :physicians

	validates :name, :location, presence: true
	validates :name, length: { maximum: 50 }

	scope :alphabetical, -> { order('LOWER(name) asc') }
	scope :in_qatar, -> { where('location = ?', "Qatar") }
	scope :with_pediatricians, -> { joins(:physicians).where('physicians.specialty = ?', "Pediatrics")}
end
