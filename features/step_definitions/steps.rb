Given(/^I go to the Behemoth Page$/) do
  visit behemoths_path
end

Given(/^I have selected Category '(\d+)'$/) do |arg1|
    pending # express the regexp above with the code you wish you had
end

Then(/^I should have to select a Category$/) do
  #you should see an instinct
  #but it should be readonly
  expect(page).to have_css('p#instinct.dropdown-button')
  find(:csss, 'p#instinct.dropdown-button').click
  #note: Nightmarish is the base (0 cost) Instinct - always present
  expect(page).to_not have_content('Nightmarish')
  #there exists a category dropdown
  expect(page).to have_css('p#category.dropdown-button')
  find(:css, 'p#category.dropdown-button').click
  find(:css, 'li:first-child').click
  expect(page).to have_content('One')
end


Then(/^I should have to select an Instinct$/) do
    pending # express the regexp above with the code you wish you had
end
