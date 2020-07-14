class Scene < ApplicationRecord
    belongs_to :user
    has_many :cameras
end
