class ProvidersController < InheritedResources::Base

  private

    def provider_params
      params.require(:provider).permit(:name,:address,:user_id)
    end
end

