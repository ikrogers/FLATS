class DietManager < ActiveRecord::Base
    belongs_to :user
    belongs_to :diet
end
