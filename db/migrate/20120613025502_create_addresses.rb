class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.integer :country_id
      t.integer :region_id
      t.integer :city_id
      t.string :line_one
      t.string :line_two
      t.string :line_three
      t.string :appt_no
      t.string :postal_zip_code
      t.string :latitude
      t.string :longitude
      t.string :intersection_one
      t.string :intersection_two
      t.boolean :active

      t.timestamps
    end
  end
end
