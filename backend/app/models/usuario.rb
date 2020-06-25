class Usuario < ApplicationRecord
    has_many :tatuadors, through: :acompanhas
    has_many :tatuagens, through: :salvas
    has_many :caracteristicas, through: :segues
    has_many :acompanhas
    has_many :salvas
    has_many :segues
    has_many :posts, through: :segues

    REGEX_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i


    validates :Nome ,presence: true
    validates :Email ,presence: true, uniqueness: {case_sensitive: false}, format: {with: REGEX_EMAIL }
    validates :CPF ,presence: true, uniqueness: true
    validates :NomeDeUsuario ,presence: true, uniqueness: true
 

    has_secure_password
    has_one_attached :foto_de_perfil

    
end
