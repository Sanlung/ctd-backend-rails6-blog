# Post model
class Post < ApplicationRecord
  has_many :comments
end
