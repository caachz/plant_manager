class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new

  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      redirect_to '/plants'
    else
      flash[:error] = plant.errors.full_messages.to_sentence
      redirect_to '/plants/new'
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    plant = Plant.find(params[:id])
    if plant.update(plant_params)
      redirect_to "/plants/#{plant.id}"
    else
      flash[:error] = plant.errors.full_messages.to_sentence
      redirect_to "/plants/#{plant.id}/edit"
    end
  end

  private
  def plant_params
    params.permit(:species, :image, :name)
  end
end
