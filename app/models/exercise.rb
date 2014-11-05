class Exercise < ActiveRecord::Base
    has_many :exercise_managers
    has_many :users, through: :exercise_managers
end
