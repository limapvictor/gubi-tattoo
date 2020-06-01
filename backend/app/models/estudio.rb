class Estudio < ApplicationRecord
    
    validate Email unique: true
    validate CNPJ unique: true
    validate Instagram unique: true
    validate Facebook unique: true

    validate Nome presence: true
    validate Email presence: true
    validate CNPJ presence: true
    validate CEP presence: true
    validate Estado presence: true
    validate Cidade presence: true
    validate Bairro presence: true
    validate Rua presence: true
    validate Numero presence: true
    validate Senha presence: true
end
