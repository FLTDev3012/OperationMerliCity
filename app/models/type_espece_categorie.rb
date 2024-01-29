class TypeEspeceCategorie < ApplicationRecord
  belongs_to :biotop
  has_many :espece_categories, class_name: 'EspeceCategorie', dependent: :destroy
  belongs_to :user
end
