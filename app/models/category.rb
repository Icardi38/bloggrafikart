class Category < ApplicationRecord

  validates :title, presence: {
      message: "Le titre doit être renseigné."
    }

    validates :title, uniqueness: {
      message: "Ce titre est déjà utilisé."
    }
    
end
