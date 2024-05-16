class Event < ApplicationRecord
  scope :past, -> { where('event_date < ?', Time.now) }
  scope :upcoming, -> { where('event_date >= ?', Time.now) }

  belongs_to :creator, class_name: 'User'

  has_many :attendances, class_name: 'Attendance', foreign_key: :attended_event_id
  has_many :attendees, through: :attendances
end
