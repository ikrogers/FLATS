class ExercisesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

 

  private
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:name, :descr, :calories, :intensity)
    end
end
