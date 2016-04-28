class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates :quantity, :name, presence: true

end
