class PickupController < ApplicationController
  def confirmation

    @provider = Provider.find(params[:provider])
    id = params[:user_stuff]
    @responder = Responder.where(user: id)

  end

  def deal

    res = Responder.find(params[:responder_id][:address])
    pro = Provider.find(params[:pro_id])
    address = res.address
    Deal.create(amount: 5 , destination_address: address, provider: pro , responder: res, responder_action: true)

    redirect_to providers_path

  end
end
