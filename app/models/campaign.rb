class Campaign < ApplicationRecord
  include Fae::BaseModelConcern
  
  validates :title, presence: true
  validates :body, presence: true
 	
  has_many :campaign_clients
  has_many :clients, through: :campaign_clients
  
  def fae_display_field
    title
  end

end
