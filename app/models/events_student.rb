class EventsStudent < ApplicationRecord
  belongs_to :students
  belongs_to :events
end
