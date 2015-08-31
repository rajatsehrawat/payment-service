class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :txnid
      t.string :booking_id
      t.float :amount
      t.string :productinfo
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address1
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
