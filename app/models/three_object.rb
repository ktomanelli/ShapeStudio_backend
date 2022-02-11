class ThreeObject < ApplicationRecord
    belongs_to :project
    has_many :children, :class_name => 'ThreeObject', foreign_key: "parent"
    belongs_to :parent, class_name: 'ThreeObject', optional: true
    has_one_attached :screenshot
end
