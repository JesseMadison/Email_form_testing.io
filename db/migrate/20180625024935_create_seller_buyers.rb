class CreateSellerBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :seller_buyers do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
