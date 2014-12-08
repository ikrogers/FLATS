module ApplicationHelper
    def resource
        @resource ||= User.new
    end
  
    def resource_name
        :user
    end

    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end
    
    def fit_rating(user)
    @user = User.find_by_id(user)
    @age = @user.age
    @vomax = @user.ex_score.to_f

    if @age<=25
      if @vomax >= 60.0
        return "Excellent"
      elsif (@vomax >= 52.0 && @vomax < 60.0)
        return "Good"
      elsif (@vomax >= 47.0 && @vomax < 52.0)
        return "Above Average"
      elsif (@vomax >= 42.0 && @vomax < 47.0)
        return "Average"
      elsif (@vomax >= 37.0 && @vomax < 42.0)
        return "Below Average"
      elsif (@vomax >= 30.0 && @vomax < 37.0)
        return "Poor"
      else
        return"Extremely Poor"
      end
    elsif @age >= 26 && @age <=35
      if @vomax > 56.0
        return "Excellent"
      elsif (@vomax >= 49.0 && @vomax < 56.0)
        return "Good"
      elsif (@vomax >= 43.0 && @vomax < 49.0)
        return "Above Average"
      elsif (@vomax >= 40.0 && @vomax < 43.0)
        return "Average"
      elsif (@vomax >= 35.0 && @vomax < 40.0)
        return "Below Average"
      elsif (@vomax >= 30.0 && @vomax < 35.0)
        return "Poor"
      else
        return"Extremely Poor"
      end
    elsif @age >= 36 && @age <=45
      if @vomax > 51.0
        return "Excellent"
      elsif (@vomax >= 43.0 && @vomax < 51.0)
        return "Good"
      elsif (@vomax >= 39.0 && @vomax < 43.0)
        return "Above Average"
      elsif (@vomax >= 35.0 && @vomax < 39.0)
        return "Average"
      elsif (@vomax >= 31.0 && @vomax < 35.0)
        return "Below Average"
      elsif (@vomax >= 26.0 && @vomax < 31.0)
        return "Poor"
      else
        return"Extremely Poor"
      end
    elsif @age >= 46 && @age <=55
      if @vomax > 45.0
        return "Excellent"
      elsif (@vomax >= 39.0 && @vomax < 45.0)
        return "Good"
      elsif (@vomax >= 36.0 && @vomax < 39.0)
        return "Above Average"
      elsif (@vomax >= 32.0 && @vomax < 36.0)
        return "Average"
      elsif (@vomax >= 29.0 && @vomax < 32.0)
        return "Below Average"
      elsif (@vomax >= 25.0 && @vomax < 29.0)
        return "Poor"
      else
        return"Extremely Poor"
      end

    elsif @age >= 56 && @age <=65
      if @vomax > 41.0
        return "Excellent"
      elsif (@vomax >= 36.0 && @vomax < 41.0)
        return "Good"
      elsif (@vomax >= 32.0 && @vomax < 36.0)
        return "Above Average"
      elsif (@vomax >= 30.0 && @vomax < 32.0)
        return "Average"
      elsif (@vomax >= 26.0 && @vomax < 30.0)
        return "Below Average"
      elsif (@vomax >= 22.0 && @vomax < 26.0)
        return "Poor"
      else
        return"Extremely Poor"
      end
    else
      if @vomax > 37.0
        return "Excellent"
      elsif (@vomax >= 33.0 && @vomax < 37.0)
        return "Good"
      elsif (@vomax >= 29.0 && @vomax < 33.0)
        return "Above Average"
      elsif (@vomax >= 26.0 && @vomax < 29.0)
        return "Average"
      elsif (@vomax >= 22.0 && @vomax < 26.0)
        return "Below Average"
      elsif (@vomax >= 20.0 && @vomax < 22.0)
        return "Poor"
      else
        return"Extremely Poor"
      end

      if @user.gender == "Female"
        if @age<=25
          if @vomax > 56.0
            return "Excellent"
          elsif (@vomax >= 47.0 && @vomax < 56.0)
            return "Good"
          elsif (@vomax >= 42.0 && @vomax < 47.0)
            return "Above Average"
          elsif (@vomax >= 38.0 && @vomax < 42.0)
            return "Average"
          elsif (@vomax >= 33.0 && @vomax < 38.0)
            return "Below Average"
          elsif (@vomax >= 28.0 && @vomax < 33.0)
            return "Poor"
          else
            return"Extremely Poor"
          end
        elsif @age >= 26 && @age <=35
          if @vomax > 52.0
            return "Excellent"
          elsif (@vomax >= 45.0 && @vomax < 52.0)
            return "Good"
          elsif (@vomax >= 39.0 && @vomax < 45.0)
            return "Above Average"
          elsif (@vomax >= 35.0 && @vomax < 39.0)
            return "Average"
          elsif (@vomax >= 31.0 && @vomax < 35.0)
            return "Below Average"
          elsif (@vomax >= 26.0 && @vomax < 31.0)
            return "Poor"
          else
            return"Extremely Poor"
          end
        elsif @age >= 36 && @age <=45
          if @vomax > 45.0
            return "Excellent"
          elsif (@vomax >= 38.0 && @vomax < 45.0)
            return "Good"
          elsif (@vomax >= 34.0 && @vomax < 38.0)
            return "Above Average"
          elsif (@vomax >= 31.0 && @vomax < 34.0)
            return "Average"
          elsif (@vomax >= 27.0 && @vomax < 31.0)
            return "Below Average"
          elsif (@vomax >= 22.0 && @vomax < 27.0)
            return "Poor"
          else
            return"Extremely Poor"
          end
        elsif @age >= 46 && @age <=55
          if @vomax > 40.0
            return "Excellent"
          elsif (@vomax >= 34.0 && @vomax < 40.0)
            return "Good"
          elsif (@vomax >= 31.0 && @vomax < 31.0)
            return "Above Average"
          elsif (@vomax >= 28.0 && @vomax < 31.0)
            return "Average"
          elsif (@vomax >= 25.0 && @vomax < 28.0)
            return "Below Average"
          elsif (@vomax >= 20.0 && @vomax < 25.0)
            return "Poor"
          else
            return"Extremely Poor"
          end

        elsif @age >= 56 && @age <=65
          if @vomax >37.0
            return "Excellent"
          elsif (@vomax >= 32.0 && @vomax < 37.0)
            return "Good"
          elsif (@vomax >= 28.0 && @vomax < 32.0)
            return "Above Average"
          elsif (@vomax >= 25.0 && @vomax < 28.0)
            return "Average"
          elsif (@vomax >= 22.0 && @vomax < 25.0)
            return "Below Average"
          elsif (@vomax >= 18.0 && @vomax < 22.0)
            return "Poor"
          else
            return"Extremely Poor"
          end
        else
          if @vomax > 32.0
            return "Excellent"
          elsif (@vomax >= 28.0 && @vomax < 32.0)
            return "Good"
          elsif (@vomax >= 25.0 && @vomax < 28.0)
            return "Above Average"
          elsif (@vomax >= 22.0 && @vomax < 25.0)
            return "Average"
          elsif (@vomax >= 19.0 && @vomax < 22.0)
            return "Below Average"
          elsif (@vomax >= 17.0 && @vomax < 19.0)
            return "Poor"
          else
            return"Extremely Poor"
          end
        end
      end
    end
  end
end