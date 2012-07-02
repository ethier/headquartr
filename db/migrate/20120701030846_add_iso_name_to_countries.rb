class AddIsoNameToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :iso_name, :string
  end
end
