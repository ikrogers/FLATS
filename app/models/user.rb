class User < ActiveRecord::Base
  has_many :exercise_managers
  has_many :exercises, through: :exercise_managers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
