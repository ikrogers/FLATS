class Diet < ActiveRecord::Base
    has_many :diet_managers
    has_many :users, through: :diet_managers
end
