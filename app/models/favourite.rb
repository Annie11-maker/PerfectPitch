class Favourite < ApplicationRecord
  belongs_to :pitch
  belongs_to :user
end
