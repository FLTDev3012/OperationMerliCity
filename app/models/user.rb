class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def after_sign_up_path_for(resource)
    faune_path
  end

  has_many :biotops, dependent: :destroy
  has_many :type_espece_categories, class_name: 'TypeEspeceCategorie', dependent: :destroy
  has_many :espece_categories, class_name: 'EspeceCategorie', dependent: :destroy
  has_many :especes, dependent: :destroy

  has_many :faunes, dependent: :destroy

  def admin?
    # Ajoutez ici la logique pour déterminer si l'utilisateur est un admin
    # Par exemple, si vous avez un champ boolean admin dans votre table users :
    admin
  end

end
