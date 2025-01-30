class Pitch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
