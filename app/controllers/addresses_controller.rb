class AddressesController < ApplicationController
  load_and_authorize_resource

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  respond_to :html

  def index
    @addresses = current_user.addresses if current_user
  end

  def new
    @address = Address.new

    location = request.location.data

    if location['country_code'] == '' or
        location['country_code'] == 'RD'
      @country = Country.find(39)
      location['country_name'] = @country.name
      location['country_code'] = @country.iso2
    end

    if location['region_code'] == ''
      @region = Region.find(1)
      location['region_code'] = @region.abbr 
    end

    if location['city'] == ''
      location['city'] = 'Toronto'
    end

    # Check request to see if it is valid.
    # @location = location
    # @location_json = location.to_json
    @location_json = location.to_gmaps4rails
  end

  def create
    if @address.save
      flash[:notice] = I18n.t("address") + I18n.t("was") + I18n.t("actions.create").pluralize
    else
      flash[:alert] = @address.errors
    end

    redirect_to :controller => :listings, :action => :new
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

end
