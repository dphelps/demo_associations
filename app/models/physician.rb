class Physician < ActiveRecord::Base
	belongs_to :hospital
	has_many :patients

	validates :name, :specialty, presence: true

	scope :endocrinologists, -> { where('specialty = ?', "Endocrinology")}
	scope :patient_count_last_n_days, lambda { |d| joins(:patients).where('patients.created_at > ?', d.days.ago).count  }

end
