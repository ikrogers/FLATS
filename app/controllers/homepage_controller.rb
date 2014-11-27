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
    if @gender != nil && @height != nil
      if @weight != nil && @birthday != nil
        @user.update_attributes(:gender => @gender, :height=> @height, :weight => @weight, :bday => @birthday)
      end
    end
    
        respond_to do |format|
          if @gender != nil && @height != nil
      if @weight != nil && @birthday != nil
          format.html{redirect_to authenticated_root_path, notice: 'Thank you! Enjoy!'}
        end
      end
      format.html{redirect_to authenticated_root_path, alert: 'An error occured... probably some of the fiels are not filled out correctly'}
    end
          
     end
  end

