module Api
  class Api::ImagesController < ApplicationController
    def create
      @image = Image.new(place_params)

      if @image.save
        flash.now[:success] = ["New Listing Created!"]
        render :show
      else
        render json: @image.errors.full_messages, status: :unprocessable_entity
      end

    end


  end
end