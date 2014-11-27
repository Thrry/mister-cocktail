class Ingredient < ActiveRecord::Base

  # An ingredient has many cocktails through doses
  has_many :cocktails

  # When you delete an ingredient, it should delete the related doses.
  has_many :doses, dependent: :destroy

  validates :name, presence: true

end
