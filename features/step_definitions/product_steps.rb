Given('there is a product named {string}') do |name|
  category = Category.first || Category.create!(name: 'Default')
  Product.create!(name: name, description: 'Sample description', price: 10.0, category: category)
end

Given('I am on the products page') do
  visit products_path
end

When('I select {string} from {string}') do |option, field|
  select option, from: field
end

When('I press button {string}') do |id|
  click_link_or_button id
end

Then('I should not see {string}') do |content|
  assert_no_text(content)
end
