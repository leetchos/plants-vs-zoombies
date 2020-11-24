class Plant < ApplicationRecord
  has_many :reviews
  has_many :purchases
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true
end
