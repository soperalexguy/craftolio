class Post < ApplicationRecord
    belongs_to :profile
    has_many :comments, :dependent => :delete_all
end
