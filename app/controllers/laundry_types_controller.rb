class LaundryTypesController < ApplicationController
  #before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @type_object = LaundryType.all
  end

  def show
    @type_object = LaundryType.find(params[:id])
  end

  def new
    @type_object = LaundryType.new
  end

  def create
    @type_object = LaundryType.new(params[:laundry_type])
    if @type_object.save
      flash[:notice] = "Successfully created laundry type."
      redirect_to @type_object
    else
      render :action => 'new'
    end
  end

  def edit
    @type_object = LaundryType.find(params[:id])
  end

  def update
    @type_object = LaundryType.find(params[:id])
    if @type_object.update_attributes(params[:laundry_type])
      flash[:notice] = "Successfully updated laundry type."
      redirect_to @type_object
    else
      render :action => 'edit'
    end
  end

  def destroy
    @type_object = LaundryType.find(params[:id])
    @type_object.destroy
    flash[:notice] = "Successfully destroyed laundry type."
    redirect_to laundry_types_url
  end

end
