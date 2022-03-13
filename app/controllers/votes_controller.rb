class VotesController < ApplicationController
  def index
    if params[:query].present?
      @votes = Vote.where(zipcode: params[:query])
    else
      @votes = Vote.where(zipcode: params[:query])
    end
  end
end