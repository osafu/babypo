class Spot < ApplicationRecord
    validates :name, presence: true
    has_many :comments, dependent: :destroy

    mount_uploader :picture, PictureUploader
end
