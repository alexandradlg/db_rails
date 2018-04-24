class Comment < ApplicationRecord
    has_many :comments, class_name: "Comment", foreign_key: "parent_id"
    belongs_to :user
    belongs_to :link
end
