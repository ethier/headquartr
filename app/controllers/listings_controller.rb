class ListingsController < ApplicationController
  load_and_authorize_resource

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  before_filter :find_user_addresses, :only => [:index, :new]

  respond_to :html

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    if (@addresses = current_user.addresses).count > 0
      @listing = Listing.new
      render
    else
      flash[:notice] = I18n.t("you_need_to_add_an_address")
      redirect_to :controller => :addresses, :action => :new
    end
  end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  protected

    def find_user_addresses
      @addresses = current_user.addresses if current_user
    end

end