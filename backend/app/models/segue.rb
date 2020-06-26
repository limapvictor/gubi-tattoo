class Segue < ApplicationRecord
  belongs_to :usuario
  belongs_to :caracteristica

  validates_uniqueness_of :caracteristica, scope: [:usuario]
end
