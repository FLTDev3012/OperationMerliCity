class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def after_sign_up_path_for(resource)
    faune_path
  end

  has_many :faunes, dependent: :destroy

  def admin?
    # Ajoutez ici la logique pour déterminer si l'utilisateur est un admin
    # Par exemple, si vous avez un champ boolean admin dans votre table users :
    admin
  end

end
