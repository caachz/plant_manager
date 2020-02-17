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

  private
  def plant_params
    params.permit(:species, :image)
  end
end
