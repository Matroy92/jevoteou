class ApplicationController < ActionController::Base
  def index
    @votes = Vote.all.order('created_at DESC')
    @votes = @votes.search(params[:query]) if params[:query].present?
  end
end
