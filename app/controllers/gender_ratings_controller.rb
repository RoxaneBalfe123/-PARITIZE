class GenderRatingsController < ApplicationController
  def show
    @gender_rating = GenderRating.find(params[:id])
  end
end
