class CosController < ApplicationController
  before_action :set_co, only: [:show, :edit, :update, :destroy]

  def index
    @cos = Co.all
  end

  def new
    @co = Co.new
  end

  def create
    @co = Co.new(set_params)
    if @co.save
      flash[:notice] = "The co was sucessfully created!"
    redirect_to co_path(@co)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @co.update(set_params)
      flash[:notice] = "The co was sucessfully updated"
      redirect_to co_path
    else
      render edit
    end
  end

  def destroy
    @co.destroy
    flash[:notice] = "The co was sucessfully deleted"
    redirect_to cos_path
  end

  private
  def set_co
    @co = Co.find(params[:id])
  end

  def set_params
    params.require(:co).permit(:name, :add, :tel)
  end

end
