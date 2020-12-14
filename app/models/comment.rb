class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :profile
    validates :details, :post_id, :profile_id, presence: true
end
