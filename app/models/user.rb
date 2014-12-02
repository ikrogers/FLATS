class User < ActiveRecord::Base
  has_many :exercise_managers
  has_many :exercises, through: :exercise_managers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def bmi
    return ( weight * 703)/(height * height)
  end
  
  def bmr
    if gender == "male"
      return 66 + (6.23 * weight) + (12.7 * height) - (6.8 * age)
    else 
      return 655 + (4.35 * weight) + (4.7 * height) - (4.7 * age)
    end
  end
  
  def age
    return Time.now.year - bday.year
  end
  
  def fullname
    "#{fname} #{lname}"
  end
end