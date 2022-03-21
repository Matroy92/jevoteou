class VotesController < ApplicationController
  def index
    if params[:query].present?
      @votes = Vote.where(zipcode: params[:query])

      @markers = @votes.geocoded.map do |vote|
        {
          lat: vote.latitude,
          lng: vote.longitude
        }
      end
    else
      @votes = Vote.all
    end
  end
end