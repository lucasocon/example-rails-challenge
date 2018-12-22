[
  %w[Johny Flow],
  %w[Raj Jamnis],
  %w[Andrew Chung],
  %w[Mike Smith],
].each do |names|
  Customer.create(first_name: names[0], last_name: names[1])
end