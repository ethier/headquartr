class AddressesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  respond_to :html

  def index
    @addresses = current_user.addresses if current_user
  end

  def new
  end

  def create
    @address = Address.new(params[:address])
    if @address.save
      flash[:notice] = I18n.t("address") + I18n.t("was") + I18n.t("actions.create").pluralize
    else
      flash[:alert] = @address.errors
    end

    redirect_to new_listing_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

end
