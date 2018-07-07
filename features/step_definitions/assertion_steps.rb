Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("an order should be created") do
  expect(Cartify::Order.count).to eq 1
end

Then("I should see {string} in my order") do |order_items_text|
  expect(page).to have_content order_items_text
end

Then("stop") do
  binding.pry
end
