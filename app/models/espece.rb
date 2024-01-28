class Espece < ApplicationRecord
  belongs_to :espece_categorie
  belongs_to :user
end
