class Category < ApplicationRecord
    belongs_to :articles, required: false
end
