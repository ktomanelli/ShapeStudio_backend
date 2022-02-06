class ThreeObject < ApplicationRecord
    belongs_to :user
    belongs_to :parent, class_name: 'ThreeObject', optional: true
    has_many :children, :class_name => 'ThreeObject'
    has_many :cameras
    has_one_attached :screenshot
end
