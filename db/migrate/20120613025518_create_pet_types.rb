class CreatePetTypes < ActiveRecord::Migration
  def change
    create_table :pet_types do |t|
      t.references :listing
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :pet_types, :listing_id
  end
end
