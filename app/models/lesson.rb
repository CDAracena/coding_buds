class Lesson < ApplicationRecord
  belongs_to :admin 
  has_many :comments
end
