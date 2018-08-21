class CampaingJob < ApplicationJob
  queue_as :emails
 
  def perform(client, title, body)
    MarketingMailer.campaign(client, title, body).deliver_now
  end
end