class EspeceCategorie < ApplicationRecord
  belongs_to :type_espece_categorie
  has_many :especes, dependent: :destroy
  belongs_to :user
end
