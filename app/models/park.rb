class Park < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image, presence: true
  # validates :address, presence: true, if: -> { latitude.nil? || longitude.nil? }
  # validates :longitude, presence: true, if: -> { address.nil? }
  # validates :latitude, presence: true, if: -> { address.nil? }
  mount_uploader :image, ImageUploader
  attr_accessor :raw_address
  geocoded_by :raw_address
  reverse_geocoded_by :latitude, :longitude
   after_validation -> {
    self.address = self.raw_address
    geocode
  }, if: ->(obj){ obj.raw_address.present? and obj.raw_address != obj.address }
  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and
                    obj.longitude.present? and obj.longitude_changed? }
  has_many :visits
end
