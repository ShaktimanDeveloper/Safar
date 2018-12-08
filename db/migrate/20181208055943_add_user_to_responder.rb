class AddUserToResponder < ActiveRecord::Migration[5.2]
  def change
    add_reference :responders, :user, foreign_key: true
  end
end
