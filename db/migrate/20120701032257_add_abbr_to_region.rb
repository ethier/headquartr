class AddAbbrToRegion < ActiveRecord::Migration
  def change
    add_column :regions, :abbr, :string
  end
end
