[
  %w[Johny Flow],
  %w[Raj Jamnis],
  %w[Andrew Chung],
  %w[Mike Smith],
].each do |names|
  Customer.create(first_name: names[0], last_name: names[1])
end

customer_one = Customer.find_by(first_name: 'Johny')
customer_two = Customer.find_by(first_name: 'Raj')
customer_three = Customer.find_by(first_name: 'Andrew')
customer_four = Customer.find_by(first_name: 'Mike')

# Create successful transactions
5.times { Charge.create(paid: true, refunded: false, amount: 10000, currency: 'usd' , customer: customer_one) }
3.times { Charge.create(paid: true, refunded: false, amount: 10000, currency: 'usd' , customer: customer_two) }
Charge.create(paid: true, refunded: false, amount: 10000, currency: 'usd' , customer: customer_three)
Charge.create(paid: true, refunded: false, amount: 10000, currency: 'usd' , customer: customer_four)

# Create failed transactions
3.times { Charge.create(paid: false, refunded: false, amount: 10000, currency: 'usd' , customer: customer_three) }
2.times { Charge.create(paid: false, refunded: false, amount: 10000, currency: 'usd' , customer: customer_four) }

# Create disputed transactions
3.times { Charge.create(paid: true, refunded: true, amount: 10000, currency: 'usd' , customer: customer_one) }
2.times { Charge.create(paid: true, refunded: true, amount: 10000, currency: 'usd' , customer: customer_two) }
