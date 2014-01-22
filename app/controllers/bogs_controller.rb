class BogsController < ApplicationController
  def index
  	@bogs = Bog.al
  end

  def show
  	id = params[:id]
  	@bog = Bog.find(id)
  end

  def new
  end

  def edit
  	id = params[:id]
  	@bog = Bog.find(id)
  end

  def create
  	bog = params.require(:bog).permit(:name, :description)
  	Bog.create(bog)

  	redirect_to "/"
  end

  def update
  end

  def delete
  end
end
