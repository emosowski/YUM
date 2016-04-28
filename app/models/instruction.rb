class Instruction < ActiveRecord::Base
  belongs_to :recipe
  validates :step, presence: true

  def is_complete?
    this.status == true
  end
end
