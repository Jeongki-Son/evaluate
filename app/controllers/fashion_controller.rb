class FashionController < ApplicationController
  def index
    @style = Style.all
  end

  def new
  end

  def create
    fashion = Fashion.new
    fashion.title = params[:title]
    fashion.save
    
    redirect_to "/fashion/index"
  end

  def show
    @fashion = Fashion.find(params[:fashion_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
