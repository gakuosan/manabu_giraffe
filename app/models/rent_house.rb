class RentHouse < ApplicationRecord
  has_many :stations, inverse_of: :rent_house, dependent: :destroy
  accepts_nested_attributes_for :stations
  validates :home_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
  validates :stations, presence: true
  belongs_to :stations
end
