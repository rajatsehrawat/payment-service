class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :txnid
      t.string :bookingid
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
      t.string :referralcode
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
