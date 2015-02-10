module Api  
  class Api::PlacesController < ApplicationController
    def create
      @place = Place.new(place_params)
      @place[:user_id] = current_user.id

      if @place.save
        flash.now[:success] = ["New Listing Created!"]
        render :show
      else
        render json: @place.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
      # @place = current_user.places.find(params[:id])
      # @place.try(:destroy)
      # render json: {}
    end

    def index
      @places = Place.all
      render :index
    end

    def show
      begin
        @place = Place.find(params[:id])
      rescue
        redirect_to api_places_url
      end
      if @place
        render :show
      end
    end

    private

    def place_params
      params.require(:place).permit(:title, :price, :utilities, :deposit, :room, :preference,
        :start_date, :end_date, :laundry, :agreement, :email, :phonenum, :desc, :address, :image_urls)
    end
  end
end
