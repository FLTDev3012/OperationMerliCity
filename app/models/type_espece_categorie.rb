class TypeEspeceCategorie < ApplicationRecord
  belongs_to :biotops
  has_many :espece_categories, dependent: :destroy
  belongs_to :user
end
