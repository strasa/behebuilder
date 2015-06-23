Given(/^I go to the Behemoth Page$/) do
  visit behemoths_path
end

Given(/^I have selected Category '(\d+)'$/) do |category_num|
  find(:css, 'p#category.dropdown-button').click
  find(:css, "li[value='#{category_num}']").click
end

Then(/^I should have to select a Category$/) do
  #you should see an instinct
  #but it should be readonly
  expect(page).to have_css('p#instinct.dropdown-button')
  find(:css, 'p#instinct.dropdown-button').click
  #note: Nightmarish is the base (0 cost) Instinct - always present
  expect(page).to_not have_content('Nightmarish')
  #there exists a category dropdown
  expect(page).to have_css('p#category.dropdown-button')
  find(:css, 'p#category.dropdown-button').click
  #if it can't find this make sure your test db is seeded
  find(:css, 'li:first-child').click
  expect(page).to have_content('One')
end

Then(/^I should see the '(\d+)\/(\d+)' Build Points$/) do |num, total|
  expect(find(:css, 'div.build_points').text).to eq("#{num}/#{total}")
end

Then(/^I should see the '(\d+) \+ (\d+)A' Initial Hand$/) do |always, per_atlas|
  expect(find(:css, 'div.initial_hand').text).to eq("#{always} + #{per_atlas}A")
end

Then(/^I should see the '(\d+) \+ A' Card Draw$/) do |card_draw|
  expect(find(:css, 'div.card_draw').text).to eq("#{card_draw} + A")
end

Then(/^I should have to select an Instinct$/) do
  pending # express the regexp above with the code you wish you had
end
