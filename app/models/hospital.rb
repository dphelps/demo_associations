class Hospital < ActiveRecord::Base
	has_many :physicians
	has_many :patients, through: :physicians
end
