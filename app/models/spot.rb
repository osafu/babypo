class Spot < ApplicationRecord
    validates :title, presence: true
    validates :content_or_picture, presence: true
    has_many :comments, dependent: :destroy

    mount_uploader :picture, PictureUploader

    private
      def content_or_picture
        content.presence or picture.presence
      end
end
