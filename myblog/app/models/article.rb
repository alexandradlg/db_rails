class Article < ApplicationRecord
    has_many :categories
    has_one :user, required: false
end
