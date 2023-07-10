class CreateOwnersBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :owners_breeds, id: false do |t|
      t.belongs_to :owner
      t.belongs_to :breed
    end
  end
end
