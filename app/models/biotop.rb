class Biotop < ApplicationRecord
  has_many :type_espece_categories, class_name: 'TypeEspeceCategorie', dependent: :destroy
  belongs_to :user
end
