class Student < ApplicationRecord
	has_one_attached :avatar	
	has_many :events_students, dependent: :destroy
    has_many :events, through: :events_students
end
