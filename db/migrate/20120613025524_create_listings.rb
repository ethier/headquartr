class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user
      t.integer :term_type_id
      t.integer :housing_type_id
      t.integer :utiltities_type_id
      t.integer :laundry_type_id
      t.integer :pet_type_id
      t.integer :rooms
      t.decimal :amount
      t.boolean :basement
      t.integer :views
      t.boolean :separate_entrance
      t.boolean :furnished
      t.boolean :parking
      t.boolean :internet
      t.boolean :cable
      t.boolean :balcony_backyard
      t.text :description
      t.boolean :active

      t.timestamps
    end
    add_index :listings, :user_id
  end
end
