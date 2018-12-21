class AddProviderActionToDeal < ActiveRecord::Migration[5.2]
  def change
    add_column :deals, :provider_action, :boolean
  end
end
