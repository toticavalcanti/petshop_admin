class Service < ApplicationRecord
  include Fae::BaseModelConcern
  has_fae_image :hero_image

  def fae_display_field
    title
  end

end
