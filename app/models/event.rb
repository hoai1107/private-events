class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :attendances, class_name: 'Attendance', foreign_key: :attended_event_id
  has_many :attendees, through: :attendances
end
