class User < ApplicationRecord
    validates_uniqueness_of :email
    has_secure_password
    has_many :scenes
    has_many :cameras
    has_many :assets
    has_many :issues
end
