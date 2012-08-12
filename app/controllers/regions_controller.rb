class RegionsController < ApplicationController
  respond_to :json

  def index
    respond_with :json => Region.find_all_by_country_id(params[:country_id])
  end
end