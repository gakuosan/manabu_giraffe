class Station < ApplicationRecord
  belongs_to:rent_house
  validates :home_name, presence: true
  validates :station_name,presence: true
  validates :walking_minutes,presence: true
  validates :along_the_line,presence: true
end
