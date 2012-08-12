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

    if request.location.data['country_code'] != '' and
        request.location.data['country_code'] != 'RD'
      @country = Country.find_by_iso2(request.location.data['country_code'])
    else
      @country = Country.find(39)
    end

    if request.location.data['region_code'] != ''
      @region = Region.find_by_code(request.location.data['region_code'])
    else
      @region = Region.find(1)
    end

    # Check request to see if it is valid.
    @json = request.location.data.to_json
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
