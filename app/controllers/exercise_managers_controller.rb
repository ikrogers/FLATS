class ExerciseManagersController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_exercise_manager, only: [:show, :edit, :update, :destroy]

  
  private
    def set_exercise_manager
      @exercise_manager = ExerciseManager.find(params[:id])
    end

    def exercise_manager_params
      params.require(:exercise_manager).permit(:user_id, :exercise_id)
    end
end
