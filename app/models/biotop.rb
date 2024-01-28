class Biotop < ApplicationRecord
  has_many :type_espece_categories, dependent: :destroy
  belongs_to :user
end
