class ExercisesController < ApplicationController
 def new
    @exercise = Exercise.new
  end

  def edit
    @exercise = Exercise.find_by_id(params[:id])
  end

  def show
    @exercise = Exercise.find(params[:id])
  end
  
  def index
    @exercises = Exercise.all
  end

  def create
    @exercise = Exercise.create(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to exercises_path }
        format.json { render action: 'show', status: :created, location: @exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @exercise = Exercise.find_by_id(params[:id])
    respond_to do |format|

      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercise = Exercise.find_by_id(params[:id])
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end
  
  

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercise_params
    params.require(:exercise).permit(:name, :descr, :calories)
  end

end