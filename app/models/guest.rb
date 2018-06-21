class Guest < ApplicationRecord

      has_many :event_guests, dependent: :destroy
      has_many :events, through: :event_guests
end
