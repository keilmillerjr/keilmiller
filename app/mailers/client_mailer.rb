class ClientMailer < ActionMailer::Base
  default from: 'tuscanidream@me.com'

  def inquiry_email(inquiry)
  	@inquiry = inquiry

  	mail to: 'tuscanidream@me.com', subject: 'New message from ' + inquiry.name
  end
end
