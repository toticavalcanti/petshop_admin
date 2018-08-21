class Product < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :price, presence: true

  has_fae_image :hero_image

  def fae_display_field
    title
  end

  belongs_to :supplier
end
