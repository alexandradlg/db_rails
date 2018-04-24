class Pin < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :image_url, presence: true,
                            format: {with: /\.(png|jpg)\Z/i}
end
