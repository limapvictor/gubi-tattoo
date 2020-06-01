class Usuario < ApplicationRecord

    validate Email unique: true
    validate CPF unique: true
    validate NomeDeUsuario unique: true
    
    validate Nome presence: true
    validate Email presence: true
    validate CPF presence: true
    validate NomeDeUsuario presence: true
    validate Senha presence: true

end
