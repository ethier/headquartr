class CleanUpCountries < ActiveRecord::Migration
  def up
    remove_column :countries, :address_id
    remove_column :countries, :code
  end
end
