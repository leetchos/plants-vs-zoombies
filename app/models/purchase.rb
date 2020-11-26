class Purchase < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :quantity, inclusion: { in: 0..10 }
end
