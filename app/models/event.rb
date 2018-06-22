class Event < ApplicationRecord

  has_many :event_guests, dependent: :destroy
  has_many :guests, through: :event_guests
 
end
