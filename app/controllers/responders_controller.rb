class RespondersController < InheritedResources::Base

  private

    def responder_params
      params.require(:responder).permit(:name, :address ,:user_id)
    end
end

