class Charge < ApplicationRecord
  belongs_to :customer

  def as_json
    {
      id: id,
      created: created_at.to_i
      paid: paid,
      amount: amount,
      currency: currency,
      refunded: refunded,
      customer_id: customer_id
    }
  end
end
