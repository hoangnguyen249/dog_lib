class RenameOwnersBreedsToBreedsOwners < ActiveRecord::Migration[7.0]
  def change
    rename_table :owners_breeds, :breeds_owners
  end
end
