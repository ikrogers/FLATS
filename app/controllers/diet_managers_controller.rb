class DietManagersController < ApplicationController
  before_action :set_diet_manager, only: [:show, :edit, :update, :destroy]

 
  private
    def set_diet_manager
      @diet_manager = DietManager.find(params[:id])
    end

    def diet_manager_params
      params[:diet_manager]
    end
end
