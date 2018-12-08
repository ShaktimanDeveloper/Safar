class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :destination_address
      t.references :responder, foreign_key: true
      t.references :provider, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
