class DrinksController < ApplicationController
   def index
      drinks = Drink.all 
      render json: drinks
   end

   def show
      drink = Drink.find(params[:id])
      if drink
         render json: drink
      else
         render json: { error: "Drink not found" }, status: :not_found
      end
   end

   def create
      drink = Drink.create(drink_params)
      render json: drink, status: :created
   end

   private

   def drink_params
      params.permit(:name, :ingredients, :alcoholic)
   end
end
