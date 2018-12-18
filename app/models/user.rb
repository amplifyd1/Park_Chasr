class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  validates :address, presence: true, if: -> { latitude.nil? || longitude.nil? }
  validates :longitude, presence: true, if: -> { address.nil? }
  validates :latitude, presence: true, if: -> { address.nil? }
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

end
