class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user_id = current_user.id
    # raise
    # @costume.user_id =
    if @costume.save
      redirect_to costumes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @costume = Costume.find(params[:id])
  end

  def update
    @costume = Costume.find(params[:id])
    # raise
    if @costume.update(costume_params)
      redirect_to costumes_path
    else
      render :edit, status: :unprocessable_entity
    end

  end
  private

  def costume_params
    params.require(:costume).permit(:product_name, :img, :details, :price, :pet_type, :user_id)
  end
end
