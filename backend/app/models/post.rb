class Post < ApplicationRecord

    validates :titulo, presence: true

    has_one_attached :foto

    belongs_to :Usuario

end