class Spot < ApplicationRecord
  validates :name, presence: true
  validates :postal_code, length: { is: 7 }
  validates :region, presence: true
  validates :address, presence: true, length: { maximum: 200 }
  validates :memo, length: { maximum: 2000 }
  has_many :comments, dependent: :destroy

  mount_uploader :picture, PictureUploader
end
