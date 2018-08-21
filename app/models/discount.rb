class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :value, uniqueness: true, presence: true

  def fae_display_field
    title
  end

end
