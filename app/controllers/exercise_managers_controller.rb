class ExerciseManagersController < ApplicationController
  before_action :set_exercise_manager, only: [:show, :edit, :update, :destroy]

  def index
    @exercise_managers = ExerciseManager.all
    respond_with(@exercise_managers)
  end

  def show
    respond_with(@exercise_manager)
  end

  def new
    @exercise_manager = ExerciseManager.new
    respond_with(@exercise_manager)
  end

  def edit
  end

  def create
    @exercise_manager = ExerciseManager.new(exercise_manager_params)
    @exercise_manager.save
    respond_with(@exercise_manager)
  end

  def update
    @exercise_manager.update(exercise_manager_params)
    respond_with(@exercise_manager)
  end

  def destroy
    @exercise_manager.destroy
    respond_with(@exercise_manager)
  end

  private
    def set_exercise_manager
      @exercise_manager = ExerciseManager.find(params[:id])
    end

    def exercise_manager_params
      params[:exercise_manager]
    end
end
