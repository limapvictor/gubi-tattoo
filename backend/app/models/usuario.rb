class Usuario < ApplicationRecord
    has_many :tatuadors, through: :acompanhas
    has_many :tatuagens, through: :salvas
    has_many :caracteristicas, through: :segues
    has_many :acompanhas
    has_many :salvas
    has_many :segues

    validates :Nome ,presence: true
    validates :Email ,presence: true
    validates :CPF ,presence: true
    validates :NomeDeUsuario ,presence: true
 

    has_secure_password
    
end
