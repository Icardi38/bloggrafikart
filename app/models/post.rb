class Post < ApplicationRecord

  validates :title, presence: { message: 'ne doit pas être vide'}

end
