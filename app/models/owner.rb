class Owner < ApplicationRecord
  has_and_belongs_to_many :breeds, join_table: :breeds_owners

  validates :name, presence: true
end
