class MarketingMailer &lt; ApplicationMailer
  def campaign(client, title, body)
    @body = body
    mail to: client.email, subject: title
  end
end