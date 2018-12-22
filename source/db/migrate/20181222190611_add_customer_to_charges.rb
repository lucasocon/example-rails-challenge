class AddCustomerToCharges < ActiveRecord::Migration[5.2]
  def change
    add_reference :charges, :customer, foreign_key: true
  end
end
