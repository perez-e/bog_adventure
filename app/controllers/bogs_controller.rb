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
  end

  def create
  end

  def update
  end

  def delete
  end
end
