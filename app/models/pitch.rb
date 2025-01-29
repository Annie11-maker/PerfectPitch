class Pitch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
end
