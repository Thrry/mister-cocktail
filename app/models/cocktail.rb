class Cocktail < ActiveRecord::Base

# A cocktail has many doses
has_many :doses, dependent: :destroy

# A cocktail has many ingredients through doses
has_many :ingredients, through: :doses

# A cocktail must have a name
validates :name, presence: true

end
