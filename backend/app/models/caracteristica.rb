class Caracteristica < ApplicationRecord
    validate Descricao unique: true
    validate Descricao presence: true
end

