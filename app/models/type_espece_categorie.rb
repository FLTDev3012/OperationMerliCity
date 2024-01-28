class TypeEspeceCategorie < ApplicationRecord
  belongs_to :biotop
  has_many :espece_categories, dependent: :destroy
  belongs_to :user
end
