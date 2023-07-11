class CreateBreedsOwner < ActiveRecord::Migration[7.0]
  def change
    create_table :breeds_owners, id: false do |t|
      t.belongs_to :owner
      t.belongs_to :breed
    end
  end
end
