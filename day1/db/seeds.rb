Product.create!(
  name: "Jana nayagan",
  description: "Not yet came due to the censor issue",
  price: 500,
  stock: 10,
  is_active: true
)


10.times do
  Customer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email
  )
end
