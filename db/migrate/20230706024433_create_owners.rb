class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :address
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
