class DietManagersController < ApplicationController
  before_action :set_diet_manager, only: [:show, :edit, :update, :destroy]

  def index
    @diet_managers = DietManager.all
    respond_with(@diet_managers)
  end

  def show
    respond_with(@diet_manager)
  end

  def new
    @diet_manager = DietManager.new
    respond_with(@diet_manager)
  end

  def edit
  end

  def create
    @diet_manager = DietManager.new(diet_manager_params)
    @diet_manager.save
    respond_with(@diet_manager)
  end

  def update
    @diet_manager.update(diet_manager_params)
    respond_with(@diet_manager)
  end

  def destroy
    @diet_manager.destroy
    respond_with(@diet_manager)
  end

  private
    def set_diet_manager
      @diet_manager = DietManager.find(params[:id])
    end

    def diet_manager_params
      params[:diet_manager]
    end
end
