class Event < ApplicationRecord

  has_many :event_guests, dependent: :destroy
  has_many :guests, through: :event_guests

  has_many :events_students, dependent: :destroy
  has_many :students, through: :events_students
  


end
