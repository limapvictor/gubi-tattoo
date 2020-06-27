class Acompanha < ApplicationRecord

    # um usuario acompanha outro usuario
    belongs_to :acompanha, class_name: "Usuario"
    
    # um usuario é acompanhado por outro usuario
    belongs_to :acompanhado, class_name: "Usuario"

    validates :acompanha, uniqueness: {scope: :acompanhado_id}
    validates :acompanhado, uniqueness: {scope: :acompanha_id}
end
