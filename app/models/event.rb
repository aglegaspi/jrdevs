class Event < ApplicationRecord
  belongs_to :eventguests
  belongs_to :eventstudents
end
