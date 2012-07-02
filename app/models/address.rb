class Address < ActiveRecord::Base
  attr_accessible :active, :appt_no, :city, :country_id, :intersection_one, :intersection_two, :latitude, :line_one, :line_three, :line_two, :longitude, :postal_zip_code, :region_id

  belongs_to :addressable, :polymorphic => true

  validates :line_one, :city, :postal_zip_code, :country_id, :region_id, :latitude, :longitude, :presence => true

  before_validation :get_latitude_and_longitude

  def to_s
    "#{full_name}: #{address1}"
  end

  def clone
    self.class.new(self.attributes.except('id', 'updated_at', 'created_at'))
  end

  def get_latitude_and_longitude
  end
end
