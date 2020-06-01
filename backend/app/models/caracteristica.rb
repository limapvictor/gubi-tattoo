class Caracteristica < ApplicationRecord
    has_many :usuarios, through: :segues
    has_many :tatuadore, through: :especializado_ems
    has_many :tatuagems, through: :possuis
    has_many :possuis
    has_many :segues
    has_many :especializado_ems

    validates :Descricao ,presence: true
end

