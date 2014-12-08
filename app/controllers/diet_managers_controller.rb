class DietManagersController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_diet_manager, only: [:show, :edit, :update, :destroy]
  def index
    @diet_managers = DietManager.where(user_id: current_user.id)
  end
  
  def new
    @diet_manager = DietManager.new
  end

  def edit
    @diet_manager = DietManager.find_by_id(params[:id])
  end

  def show
    @diet_manager = DietManager.find(params[:id])
  end

  def create
    @user = params[:trainee].nil? ? current_user : params[:trainee]
    @man = Diet.find(params[:project][:sel_diet]) rescue nil
    if @man != nil
      if params[:trainee].nil?
        sum = @man.map {|d| d['calories']}.reduce(0, :+)
        if sum > current_user.diet_score.to_f
          flash[:alert] = "You cannot exceed your maximum alotted calorie consumption."
        else
          @man.each do |e|
            @em = DietManager.create(user_id: @user, diet_id: e.id) rescue nil
          end
        end
      else
        @man.each do |e|
          @em = DietManager.create(user_id: @user, diet_id: e.id) rescue nil
        end
      end
    end
    respond_to do |format|
      format.html { redirect_to authenticated_root_path }
      format.json { render action: 'show', status: :created, location: @diet }
    end
  end

  def update
    @diet_manager = DietManager.find_by_id(params[:id])
    respond_to do |format|

      if @diet_manager.update(diet_manager_params)
        format.html { redirect_to @diet_manager }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diet_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  def diet_input
  end

  def diet_output
    @user = current_user
    @w = params[:weight] rescue nil
    @h = params[:height] rescue nil
    @activity = params[:activity].to_s
    @weight = (@w.to_f * 0.45359237)
    @height = (@h.to_f * 0.39370)
    
    if @user.gender = "Male"
      @bmr = (88.362 + (13.397 * @weight.to_f) + (4.799 * @height.to_f) - (5.677 * @user.age.to_f))
    else
      @bmr = (447.593 + (9.247 * @weight.to_f) + (3.098 * @height.to_f) - (4.330 * @user.age.to_f))
    end

    if @activity == "Little to no exercise"
      @user.update_attributes(:diet_score => (@bmr.to_f * 1.2), :weight => @w, :heihgt => @h)
    elsif @activity == "Light exercise (1–3 days per week)"
      @user.update_attributes(:diet_score => (@bmr.to_f * 1.375), :weight => @w, :heihgt => @h)
    elsif @activity == "Moderate exercise (3–5 days per week)"
      @user.update_attributes(:diet_score => (@bmr.to_f * 1.55), :weight => @w, :heihgt => @h)
    elsif @activity == "Heavy exercise (6–7 days per week)"
      @user.update_attributes(:diet_score => (@bmr.to_f * 1.725), :weight => @w, :heihgt => @h)
    elsif @activity == "Very heavy exercise (twice per day, extra heavy workouts"
      @user.update_attributes(:diet_score => (@bmr.to_f * 1.9), :weight => @w, :heihgt => @h)
    else
      @flag = "error"
    end
    
    if @flag == "error"
      respond_to do |format|
        format.html{redirect_to authenticated_root_path, alert: 'Error has occured. Nothing was updated.'}
      end
    else
      respond_to do |format|
        format.html{redirect_to authenticated_root_path, notice: 'Thank you for completing your diet test!'}
      end
    end
  end

  def destroy
    @diet_manager = DietManager.find_by_id(params[:id])
    @diet_manager.destroy
    respond_to do |format|
      format.html { redirect_to authenticated_root_path }
      format.json { head :no_content }
    end
  end

  private

  def set_diet_manager
    @diet_manager = DietManager.find(params[:id])
  end

  def diet_manager_params
    params.require(:diet_manager).permit(:user_id, :diet_id)
  end
end