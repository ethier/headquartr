class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :region
      t.references :address
      t.string :name

      t.timestamps
    end
    add_index :cities, :region_id
    add_index :cities, :address_id
  end
end
