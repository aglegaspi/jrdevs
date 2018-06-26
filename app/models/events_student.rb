class EventsStudent < ApplicationRecord
  belongs_to :student
  belongs_to :event
end