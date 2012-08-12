class Address < ActiveRecord::Base
  attr_accessible :appt_no, :city, :country_id, :address_one, :address_two, 
                  :address_three, :postal_zip_code, :region_id

  belongs_to :addressable, :polymorphic => true

  validates :address_one, :city, :postal_zip_code, :country_id, :region_id, 
            :latitude, :longitude, :intersection_one, :intersection_two, 
            :presence => true

  # before_validation :get_latitude_and_longitude, :get_intersection
  after_validation :get_intersection

  acts_as_gmappable

  geocoded_by :address

  def to_s
    "#{line_one}, #{line_two}" #{address1}"
  end

  protected

    def clone
      self.class.new(self.attributes.except('id', 'updated_at', 'created_at'))
    end

    # def get_latitude_and_longitude
    #   # Add some geocoder magic here.
    # end

    def get_intersection
    end

    def address
      [address_one, city, region, country].compact.join(', ')
    end
end
