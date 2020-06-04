class Tatuagem < ApplicationRecord
    belongs_to :Tatuador, required: false
    belongs_to :Estudio, required: false
    has_many :caracteristicas, through: :possuis
    has_many :usuarios, through: :salvas
    has_many :salvas
    has_many :possuis
    
    
    validates :Titulo ,presence: true
    validates :Link ,presence: true

end
