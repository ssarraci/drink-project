class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   def index
      users = User.all 
      render json: users
   end

   def show
      user = User.find(params[:id])
      if user
         render json: user
      else
         render_not_found_response
   end

   def create
      user = User.create(user_params)
      render json: user, status: :created
   end

   def update
      user = User.find(params[:id])
      if user
         user.update(user_params)
         render json: user
      else
         render_not_found_response
      end

   end

   private

   def user_params
      params.permit(:username, :email, :password_digest)
   end

   def render_not_found_response
      render json: { error: "User not found" }, status: :not_found
   end

end
