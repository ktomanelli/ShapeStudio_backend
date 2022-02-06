class User < ApplicationRecord
    validates_uniqueness_of :email
    has_secure_password
    has_many :three_objects
    has_many :cameras
    has_many :assets
    has_many :issues
end
