class ExerciseManagersController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_exercise_manager, only: [:show, :edit, :update, :destroy]
  def index
    @exercise_managers = ExerciseManager.where(user_id: current_user.id)
  end
  
  def new
    @exercise_manager = ExerciseManager.new
  end
  
  def edit
    @exercise_manager = ExerciseManager.find_by_id(params[:id])
  end
  
  def show
    @exercise_manager = ExerciseManager.find(params[:id])
  end

  def create
    @user = params[:trainee].nil? ? current_user : params[:trainee]
    @man = Exercise.find(params[:project][:sel_ex]) rescue nil
    @man.each do |e|
      @em = ExerciseManager.create(user_id: @user, exercise_id: e.id)
    end
    respond_to do |format|
      format.html { redirect_to authenticated_root_path }
      format.json { render action: 'show', status: :created, location: @diet }
    end
  end
  
  def update
    @exercise_manager = ExerciseManager.find_by_id(params[:id])
    respond_to do |format|
      if @exercise_manager.update(exercise_manager_params)
        format.html { redirect_to @exercise_manager }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise_manager.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @em = ExerciseManager.find_by_id(params[:id])
    @em.destroy
    respond_to do |format|
      format.html { redirect_to authenticated_root_path }
      format.json { head :no_content }
    end
  end
  
  def fitness_info
  end
  
  def fitness_score
    @user = current_user
    @distance = params[:distance] rescue nil
    if @distance != nil
    @distance = (@distance.to_f / 0.00062137)
    @vomax = ((@distance.to_f-505) / 45)
    @user.update_attributes(:ex_score => @vomax)

    end
    respond_to do |format|
      format.html{redirect_to authenticated_root_path, notice: 'Thank you for completing your fitness test!'}
    end
  end
  
  private

  def set_exercise_manager
    @exercise_manager = ExerciseManager.find(params[:id])
  end

  def exercise_manager_params
    params.require(:exercise_manager).permit(:user_id, :exercise_id)
  end
end
