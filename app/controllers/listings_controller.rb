class ListingsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @addresses = current_user.addresses if current_user

    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @addresses = current_user.addresses if current_user

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

  private

end