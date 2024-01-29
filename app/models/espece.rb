class Espece < ApplicationRecord
  belongs_to :espece_categorie
  belongs_to :user
  has_one_attached :photo
end
