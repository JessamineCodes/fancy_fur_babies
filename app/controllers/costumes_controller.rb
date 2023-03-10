class CostumesController < ApplicationController
  def index
    if params[:query].present?
      @costumes = Costume.search_by_name_and_desc_and_type(params[:query])
    else
      @costumes = Costume.all
    end
  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user_id = current_user.id

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
    if @costume.update(costume_params)
      redirect_to my_costumes_costumes_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def my_costumes
    @costumes = Costume.where(user_id: current_user.id)
    @bookings = Booking.all
  end

  def destroy
    @costume = Costume.find(params[:id])
    @costume.destroy
    redirect_to my_costumes_costumes_path, status: :see_other
  end

  private

  def costume_params
    params.require(:costume).permit(:product_name, :img, :photo, :details, :price, :pet_type, :user_id)
  end
end
