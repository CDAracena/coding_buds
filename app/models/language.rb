class Language < ApplicationRecord
    has_many :lessons, dependent: :destroy
    has_many :comments, through: :lessons
end
