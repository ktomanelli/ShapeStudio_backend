class ProjectSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :name, :file_schema
    has_many :three_objects
    has_many :materials
    has_many :assets
    # has_many :animations
    # has_many :scripts
  end