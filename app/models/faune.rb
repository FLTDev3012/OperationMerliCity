class Faune < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
end
