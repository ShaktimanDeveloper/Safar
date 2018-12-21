class AddResponderActionToDeal < ActiveRecord::Migration[5.2]
  def change
    add_column :deals, :responder_action, :boolean
  end
end
