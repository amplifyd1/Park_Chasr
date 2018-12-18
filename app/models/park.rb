class Park < ApplicationRecord
  attr_accessor :raw_address

  geocoded_by :raw_address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and
                    obj.longitude.present? and obj.longitude_changed? }
end
