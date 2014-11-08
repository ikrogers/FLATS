class DietsController < ApplicationController
  before_action :set_diet, only: [:show, :edit, :update, :destroy]

  def index
    @diets = Diet.all
    respond_with(@diets)
  end

  def show
    respond_with(@diet)
  end

  def new
    @diet = Diet.new
    respond_with(@diet)
  end

  def edit
  end

  def create
    @diet = Diet.new(diet_params)
    @diet.save
    respond_with(@diet)
  end

  def update
    @diet.update(diet_params)
    respond_with(@diet)
  end

  def destroy
    @diet.destroy
    respond_with(@diet)
  end

  private
    def set_diet
      @diet = Diet.find(params[:id])
    end

    def diet_params
      params.require(:diet).permit(:fName, :descr, :calories)
    end
end
