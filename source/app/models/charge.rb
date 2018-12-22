class Charge < ApplicationRecord
  belongs_to :customer

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :failed, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }

  def customer_full_name
    "#{customer.first_name} #{customer.last_name}"
  end

  def formatted_amount
    "#{amount/100}  #{currency}"
  end

  def row_information
    "#{customer_full_name}:  #{formatted_amount}, #{created_at.strftime("%m/%d/%Y")}"
  end

  def as_json
    {
      id: id,
      created: created_at.to_i,
      paid: paid,
      amount: amount,
      currency: currency,
      refunded: refunded,
      customer_id: customer_id
    }
  end
end
