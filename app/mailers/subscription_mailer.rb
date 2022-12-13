class SubscriptionMailer < ApplicationMailer
  default from: 'crushs.connexion@gmail.com'

  def welcome_email
    @subscription = params[:subscription]
    @url = 'localhost:3000/subscriptions/new '
    # binding.pry
    mail(to: @subscription.mail, subject: 'Bienvenu sur Crushs !')
  end

  def contact
    mail(to: @subscription.mail, subject: 'Bienvenu sur Crushs !')
  end
end
