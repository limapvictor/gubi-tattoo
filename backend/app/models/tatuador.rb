class Tatuador < ApplicationRecord
    has_many :estudios, through: :trabalha_paras
    has_many :tatuagems
    has_many :usuarios, through: :acompanhas
    has_many :caracteristicas, through: :especializado_ems
    has_many :trabalha_paras
    has_many :acompanhas
    has_many :especializado_ems
    
    validates :Nome ,presence: true
    validates :Email ,presence: true
    validates :CPF ,presence: true
    validates :Celular ,presence: true
    validates :Senha ,presence: true
    
end
