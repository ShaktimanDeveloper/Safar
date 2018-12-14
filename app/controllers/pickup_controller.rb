class PickupController < ApplicationController
  def confirmation

    @provider = Provider.find(params[:provider])
    id = params[:user_stuff]
    @responder = Responder.where(user: id)

  end
end
