class PlantsController < ApplicationController
    # GET /birds
    def index
        birds = Plant.all
        render json: birds
    end
    
    # GET /plants/:id
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    # POST /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
