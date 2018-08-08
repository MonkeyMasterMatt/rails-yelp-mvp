class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, inclusion: {in: [ "chinese", "italian", "japanese", "french", "belgian" ] }
  validates :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
