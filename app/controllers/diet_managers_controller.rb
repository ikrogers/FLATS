class DietManagersController < ApplicationController
  before_action :set_diet_manager, only: [:show, :edit, :update, :destroy]
  def new
    @diet_manager = DietManager.new
  end

  def edit
    @diet_manager = DietManager.find_by_id(params[:id])
  end

  def index
    @diet_managers = DietManager.all
  end

  def show
    @diet_manager = DietManager.find(params[:id])
  end

  def create
    @man = Diet.find(params[:project][:sel_diet]) rescue nil
    if @man != nil
      @man.each do |e|
        @em = DietManager.create(user_id: current_user.id, diet_id: e.id) rescue nil
      end
    end

    respond_to do |format|
      format.html { redirect_to diet_managers_path }
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
    @weight = params[:weight] rescue nil
    @height = params[:height] rescue nil
    @activity = params[:activity].to_s
    @weight = (@weight.to_f*0.45359237)
    @height = (@height.to_f*0.39370)
    if @user.gender = "Male"
      @bmr = (88.362 + (13.397 * @weight.to_f) + (4.799 * @height.to_f) - (5.677 * @user.age.to_f))
    else
      @bmr = (447.593 + (9.247 * @weight.to_f) + (3.098 * @height.to_f) - (4.330 * @user.age.to_f))
    end

    if @activity == "Little to no exercise"
      @user.update_attributes(:weight => (@weight.to_f/0.45359237), :height => (@height.to_f/0.39370), :diet_score => (@bmr.to_f*1.2))
    elsif @activity == "Light exercise (1–3 days per week)"
      @user.update_attributes(:weight => (@weight.to_f/0.45359237), :height => (@height.to_f/0.39370), :diet_score => (@bmr.to_f*1.375))
    elsif @activity == "Moderate exercise (3–5 days per week)"
      @user.update_attributes(:weight => (@weight.to_f*0.45359237), :height => (@height.to_f*0.39370), :diet_score => (@bmr.to_f*1.55))
    elsif @activity == "Heavy exercise (6–7 days per week)"
      @user.update_attributes(:weight => (@weight.to_f*0.45359237), :height => (@height.to_f*0.39370), :diet_score => (@bmr.to_f*1.725))
    elsif @activity == "Very heavy exercise (twice per day, extra heavy workouts"
      @user.update_attributes(:weight => (@weight.to_f*0.45359237), :height => (@height.to_f*0.39370), :diet_score => (@bmr.to_f*1.9))
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
      format.html { redirect_to diet_managers_url }
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