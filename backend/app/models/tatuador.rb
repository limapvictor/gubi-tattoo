class Tatuador < ApplicationRecord

    validate Email unique: true
    validate CPF unique: true
    validate Instagram unique: true
    validate Celular unique: true

    validate Nome presence: true
    validate Email presence: true
    validate CPF presence: true
    validate Celular presence: true
    validate Senha presence: true
    
end
