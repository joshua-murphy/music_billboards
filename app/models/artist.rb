class Artist < ApplicationRecord
  belongs_to :billboard
  before_save :default_values

  def default_values
    self.rank = 0
  end
  
end
