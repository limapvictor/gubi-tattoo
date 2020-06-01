class Estudio < ApplicationRecord
    has_many :tatuadors, through: :trabalha_paras
    has_many :tatuagems

    validates :Nome ,presence: true
    validates :Email ,presence: true
    validates :CNPJ ,presence: true
    validates :CEP ,presence: true
    validates :Estado ,presence: true
    validates :Cidade ,presence: true
    validates :Bairro ,presence: true
    validates :Rua ,presence: true
    validates :Numero ,presence: true
    validates :Senha ,presence: true
end
