class Usuario < ApplicationRecord
    has_many :tatuadors, through: :acompanhas
    has_many :tatuagens, through: :salvas
    has_many :caracteristicas, through: :segues
    has_many :posts
    has_many :acompanhas
    has_many :salvas
    has_many :segues

    validates :Nome ,presence: true
    validates :Email ,presence: true, uniqueness: true
    validates :CPF ,presence: true, uniqueness: true
    validates :NomeDeUsuario ,presence: true, uniqueness: true
 

    has_secure_password
    has_one_attached :foto_de_perfil
end
