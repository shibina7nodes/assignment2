class Goal < ApplicationRecord
	belongs_to :student
	has_many :tasks
end