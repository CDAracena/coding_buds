class Language < ApplicationRecord
    has_many :lessons
    has_many :comments, through: :lessons
end
