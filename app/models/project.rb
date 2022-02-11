class Project < ApplicationRecord
    belongs_to :user
    has_many :three_objects
    has_many :materials
    has_many :assets
end
