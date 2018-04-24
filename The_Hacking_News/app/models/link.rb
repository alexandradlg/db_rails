class Link < ApplicationRecord
    belongs_to :user, required: false
    has_many :comments
    validates :url, presence: true
    validates :url, format: { with: URI.regexp }, if: 'url.present?'
end
