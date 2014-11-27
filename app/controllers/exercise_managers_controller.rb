class ExerciseManagersController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_exercise_manager, only: [:show, :edit, :update, :destroy]
  def index
    @exercise_managers = ExerciseManager.where(user_id: current_user.id)
  end

  def new
    @exercise_manager = ExerciseManager.new
  end

  def create
    @man = Exercise.find(params[:project][:sel_ex]) rescue nil
    @man.each do |e|
      @em = ExerciseManager.create(user_id: current_user.id, exercise_id: e.id)
    end

    respond_to do |format|
      format.html { redirect_to exercise_managers_path }
      format.json { render action: 'show', status: :created, location: @diet }
    end
  end

  def destroy
    @em = ExerciseManager.find_by_id(params[:id])
    @em.destroy
    respond_to do |format|
      format.html { redirect_to exercise_managers_url }
      format.json { head :no_content }
    end
  end
<<<<<<< HEAD

=======
  
  
  
  def fitness_info
    
  end
  
  def fitness_score
    @user = current_user
    @age = params[:age] rescue nil
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
  
>>>>>>> e0e016c9ab9fea45dc5010ef29893938c8c748bc
  private

  def set_exercise_manager
    @exercise_manager = ExerciseManager.find(params[:id])
  end

  def exercise_manager_params
    params.require(:exercise_manager).permit(:user_id, :exercise_id)
  end
end
