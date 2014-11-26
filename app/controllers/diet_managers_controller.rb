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