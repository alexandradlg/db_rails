class Lesson < ApplicationRecord
    belongs_to :course, required: false
end
