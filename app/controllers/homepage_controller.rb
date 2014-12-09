class HomepageController < ApplicationController
  def index

  end

  def register_input

  end

  def register_clear
    @user = current_user
    @gender = params[:gender] rescue nil
    @height = params[:height] rescue nil
    @weight = params[:weight] rescue nil
    @birthday = params[:birth] rescue nil
    @first = params[:first] rescue nil
    @last = params[:last] rescue nil

    respond_to do |format|
      if @gender != nil && @height != nil
        if @height.to_f > 36 && @height.to_f < 250
          if @weight.to_f > 0 && @weight.to_f < 2000
            if @weight != nil && @birthday != nil
              if @first != nil && @last != nil
                if@user.age > 15 && @user.age <= 85
                @user.update_attributes(:gender => @gender, :height=> @height, :weight => @weight, :bday => Date.parse(@birthday.to_s), :fname => @first, :lname => @last)
                format.html{redirect_to authenticated_root_path, notice: 'Thank you! Enjoy!'}
              end
            end
          end
        end
      end
      format.html{redirect_to authenticated_root_path, alert: 'An error occured... probably some of the fields are not filled out correctly'}
    end

  end
end

