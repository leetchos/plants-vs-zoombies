class Plant < ApplicationRecord
  has_many :reviews
  has_many :purchases
  belongs_to :user
  validates :name, presence: true
end
