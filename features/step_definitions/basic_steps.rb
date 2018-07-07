Then("show me the page in browser") do
  save_and_open_page
end

Given("I visit the application") do
  visit root_path
end

Given("there is a dish called {string} on restaurant's menu") do |product_name|
  product = Product.new(name: product_name)
  product.save
end

Given("I click on {string} for {string}") do |link_content, product_name|
  product = Product.find_by(name: product_name)
  within "div#product-#{product.id}" do
    #binding.pry
    #click_link link_content
    find('a').click
  end
end


