Given("I visit the application") do
  visit root_path
end

Given("there is a dish called {string} on restaurant's menu") do |product_name|
  product = Product.new(name: product_name)
  product.save
end
