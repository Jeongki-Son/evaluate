class StyleController < ApplicationController
  def index
  end

  def new
    @fashion = Fashion.find(params[:fashion_id])
  end

  def create
    style = Style.new
    style.name = params[:name]
    style.age = params[:age]
    style.job = params[:job]
    style.photo = params[:photo]
    style.fashion_id = params[:fashion_id]
    style.save
    
    redirect_to '/fashion/index'
  end

  def show
    @style = Style.find(params[:style_id])
  end

  def edit
    @style = Style.find(params[:style_id])
  end

  def update
    style = Style.find(params[:style_id])
    style.name = params[:name]
    style.age = params[:age]
    style.job = params[:job]
    unless style.photo.nil?
      style.photo = params[:photo]
    end
    style.save
    
    redirect_to '/fashion/index'
  end

  def destroy
    style = Style.find(params[:style_id])
    style.destroy
    
    redirect_to '/fashion/index'
  end
end
