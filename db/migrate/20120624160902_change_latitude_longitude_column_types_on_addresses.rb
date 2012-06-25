class ChangeLatitudeLongitudeColumnTypesOnAddresses < ActiveRecord::Migration
  def up
    change_column :addresses, :latitude, :float
    change_column :addresses, :longitude, :float
  end

  def down
    change_column :addresses, :latitude, :string
    change_column :addresses, :longitude, :string
  end
end
