class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.references :address
      t.string :name
      t.string :code

      t.timestamps
    end
    add_index :countries, :address_id
  end
end
