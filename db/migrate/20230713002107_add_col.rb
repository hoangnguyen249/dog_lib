class AddCol < ActiveRecord::Migration[7.0]
  def change
    add_column :breeds, :gender, :string
    add_column :breeds, :size, :string
    add_column :owners, :address, :string
  end
end
