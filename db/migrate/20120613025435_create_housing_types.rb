class CreateHousingTypes < ActiveRecord::Migration
  def change
    create_table :housing_types do |t|
      t.references :listing
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :housing_types, :listing_id
  end
end
