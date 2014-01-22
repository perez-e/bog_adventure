class BogsController < ApplicationController
  def index
  	@bogs = Bog.all
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
  	id = params[:id]
  	bog = Bog.find(id)

  	info = params.require(:bog).permit(:name, :description)
  	bog.update_attributes(info)


  	redirect_to "/bogs/#{id}"
  end

  def delete
    id = params.require(:bog_id).to_i
    Bog.find(id).destroy

    redirect_to "/"
  end
end
