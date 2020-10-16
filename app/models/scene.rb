class Scene < ApplicationRecord
    belongs_to :user
    has_many :cameras
    has_one_attached :screenshot
end
