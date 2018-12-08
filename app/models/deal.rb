class Deal < ApplicationRecord
  belongs_to :responder
  belongs_to :provider
end
