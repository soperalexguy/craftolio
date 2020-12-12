class Post < ApplicationRecord
    belongs_to :profile
    has_many :comments, :dependent => :delete_all
    has_one_attached :picture, :dependent => :delete
end
