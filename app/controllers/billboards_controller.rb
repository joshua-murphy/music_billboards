class BillboardsController < ApplicationController

  before_action :set_billboard, only: [:show, :edit, :update, :destroy]

  def index
    @billboards = Billboard.all
  end
  
  def show
  end
  
  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(billboard_params)
    @billboard.save ? (redirect_to billboard_path(@billboard)) : (render :new)
  end

  def edit
  end

  def update
    @billboard.update(billboard_params)   
    @billboard.save ? (redirect_to billboard_path(@billboard)) : (render :edit)    
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private

    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def billboard_params
      params.require(:billboard).permit(:name, :count, :genre)
    end

end
