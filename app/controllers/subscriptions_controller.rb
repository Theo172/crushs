class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new # Needed to instantiate the form_with
  end

  def create
    @subscription = Subscription.new(subscription_params)
    # binding.pry
    respond_to do |format|

      if @subscription.save
        SubscriptionMailer.with(subscription: @subscription).welcome_email.deliver_later
        # binding.pry
        format.html { redirect_to(root_path, notice: "Vous êtes bien enregistré ! Merci!") }
        format.json { render json: @subscription, status: :created, location: @subscription }
      else
        format.html { render action: 'new' }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
        flash[:error] = "L'enregistrement n'a pas fonctionné..."
      end
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:name, :mail)
  end
end
