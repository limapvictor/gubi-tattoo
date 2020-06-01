class Tatuagem < ApplicationRecord
    belongs_to :Tatuador

    validate Link unique: true
    
    validate Titulo presence: true
    validate Link presence: true

end
