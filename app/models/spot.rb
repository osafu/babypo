class Spot < ApplicationRecord
    validates :title, presence: true
end
