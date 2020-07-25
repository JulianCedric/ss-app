class Student < ApplicationRecord
    has_many :sessions
    has_many :tutors, through: :sessions
end
