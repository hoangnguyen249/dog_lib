class CreateBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :breeds do |t|
      t.string :name
      t.references :owner, foreign_key: true

      t.timestamps
      add_column :breeds, :gender, :string
      add_column :breeds, :size, :string
    end
  end
end
