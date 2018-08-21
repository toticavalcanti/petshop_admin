class Campaign < ApplicationRecord
  include Fae::BaseModelConcern
  
  validates :title, presence: true
  validates :body, presence: true

  def fae_display_field
    title
  end

end
