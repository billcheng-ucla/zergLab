class Lab < ApplicationRecord
	validates :name, presence: true
	has_many :scientists
	has_many :zerg
end
