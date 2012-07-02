class ListingsController < ApplicationController
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
    @address = Address.new
    @listing = Listing.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

    def find_user_addresses
      @addresses = current_user.addresses if current_user
    end

end