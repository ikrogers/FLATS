class DietsController < ApplicationController
  def new
    @diet = Diet.new
  end

  def edit
    @diet = Diet.find_by_id(params[:id])
  end
  
  def index
    @diets = Diet.all
  end

  def show
    @diet = Diet.find(params[:id])
  end

  def create
    @diet = Diet.create(diet_params)

    respond_to do |format|
      if @diet.save
        format.html { redirect_to diets_path }
        format.json { render action: 'show', status: :created, location: @diet }
      else
        format.html { render action: 'new' }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @diet = Diet.find_by_id(params[:id])
    respond_to do |format|

      if @diet.update(diet_params)
        format.html { redirect_to @diet }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @diet = Diet.find_by_id(params[:id])
    @diet.destroy
    respond_to do |format|
      format.html { redirect_to diets_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_diet
    @diet = Diet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def diet_params
    params.require(:diet).permit(:name, :descr, :calories)
  end

end