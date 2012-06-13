class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.references :country
      t.references :address
      t.string :name

      t.timestamps
    end
    add_index :regions, :country_id
    add_index :regions, :address_id
  end
end
