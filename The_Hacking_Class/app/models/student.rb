class Student < ApplicationRecord
    has_one :course, required: false
end
