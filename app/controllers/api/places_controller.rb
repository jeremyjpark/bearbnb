module Api  
  class Api::PlacesController < ApplicationController
    def create
      @place = Place.new(place_params)

      if @place.save
        render json: @place
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
      render json: @places
    end

    def show
      # @place = place.includes(:members, lists: :cards).find(params[:id])

      # if @place.is_member?(current_user)
      #   render :show
      # else
      #   render json: ["You aren't a member of this place"], status: 403
      # end
    end

    private

    def board_params
      params.require(:place).permit(:title)
    end
  end
end
