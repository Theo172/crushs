class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new # Needed to instantiate the form_with
  end

  def create
    binding.pry
    @subscription = Subscription.new(subscription_params)
    @subscription.save
    # raise
    redirect_to root_path
  end

  private

  def subscription_params
    params.require(:subscription).permit(:name, :email)
  end
end
