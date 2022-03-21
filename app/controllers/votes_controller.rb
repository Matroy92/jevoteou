class VotesController < ApplicationController
  def index
    if params[:query].present?
      @votes = Vote.where(zipcode: params[:query])
    else
      @votes = Vote.all
    end
  end
end