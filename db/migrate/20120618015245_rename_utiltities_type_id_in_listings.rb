class RenameUtiltitiesTypeIdInListings < ActiveRecord::Migration
  def up
    rename_column :listings, :utiltities_type_id, :utilities_type_id
  end

  def down
    rename_column :listings, :utilities_type_id, :utiltities_type_id
  end
end
