class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :instructions
  has_many :ingredients
  validates :title, :description, :longform_instructions, :category, presence: true
end
