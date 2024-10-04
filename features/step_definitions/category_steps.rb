Given('I am on the categories page') do
  visit categories_path
end

Given('there is a category named {string}') do |name|
  Category.create!(name: name)
end

When('I click {string}') do |link|
  click_link link
end

When('I click {string} for {string}') do |link, category_name|
  category = Category.find_by(name: category_name)
  within("tr#category_#{category.id}") do
    click_link link
  end
end

When('I fill in {string} with {string}') do |field, value|
  fill_in field, with: value
end

When('I press {string}') do |button|
  click_button button
end

Then('I should see {string}') do |content|
  expect(page).to have_content(content)
end
