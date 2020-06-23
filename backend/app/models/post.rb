class Post < ApplicationRecord

    validates :titulo, presence: true

    has_one_attached :foto

    belongs_to :usuario

    acts_as_taggable_on :tags

end