class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  def fae_display_field
    
  end

  belongs_to :discount
  belongs_to :client
end
