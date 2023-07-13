class Breed < ApplicationRecord
  has_and_belongs_to_many :owners, join_table: :breeds_owners
  has_many :images
  validates :name, presence: true
end
