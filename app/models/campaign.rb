class Campaign < ApplicationRecord
  include Fae::BaseModelConcern
 
  validates :title, presence: true
  validates :body, presence: true
  has_many :campaign_clients
  has_many :clients, through: :campaign_clients
 
  after_save :schedule_emails
 
  def fae_display_field
    title
  end
 
  def schedule_emails
    Client.all.each do |client|
      CampaignClient.create(campaign: self, client: client)
      CampaingJob.perform_later client, self.title, self.body
    end
  end
end