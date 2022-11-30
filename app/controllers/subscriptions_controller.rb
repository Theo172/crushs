class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new # Needed to instantiate the form_with
  end

  def create
    @subscription = Subscription.new(subscription_params)
    # binding.pry
    if @subscription.save
      flash[:notice] = 'Vous êtes bien enregistré ! Merci!'
      # raise
      redirect_to root_path
    else
      flash[:error] = "L'enregistrement n'a pas fonctionné..."
      render :new
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:name, :mail)
  end
end
