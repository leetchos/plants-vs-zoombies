class Plant < ApplicationRecord
  #geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :reviews, dependent: :destroy
  has_many :purchases, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true
end
