class SubscriptionMailer < ApplicationMailer
  default from: 'crushs.connexion@gmail.com'

  def welcome_email
    @subscription = params[:subscription]
    @url = 'localhost:3000/subscriptions/new '
    mail(to: @subscription.mail, subject: 'Bienvenu sur Crushs !')
  end

  def contact
    mail(to: 'adrien.schaffner@gmail.com', subject: 'Bienvenu sur Crushs !')
  end
end
