class Profile < ApplicationRecord
    has_many :posts, :dependent => :delete_all
    has_many :comments, :dependent => :delete_all
    belongs_to :user
    has_one_attached :picture, :dependent => :delete
    validates :fname, :lname, :user_id, :username, presence: true
end
