Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("an order should be created") do
  order = Cartify::Order.last
  expect(order).not_to be nil
end

Then("I should see {string} in my order") do |string|
  expect(page).to have_content "#{string} item"
end
