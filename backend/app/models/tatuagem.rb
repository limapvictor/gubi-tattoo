class Tatuagem < ApplicationRecord
    belongs_to :Tatuador
    belongs_to :Estudio
    has_many :caracteristicas, through: :possuis
    has_many :usuarios, through: :salvas
    has_many :salvas
    has_many :possuis
    
    
    validates :Titulo ,presence: true
    validates :Link ,presence: true

end
