class RenameCityIdToCity < ActiveRecord::Migration
  def up
    remove_column :addresses, :city_id
    add_column :addresses, :city, :string
  end

  def down
    remove_column :addresses, :city
    add_column :addresses, :city_id, :integer
  end
end
