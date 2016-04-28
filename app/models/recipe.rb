class Recipe < ActiveRecord::Base
  belongs_to :user
  validates :title, :description, :longform_instructions, :category, presence: true
end
