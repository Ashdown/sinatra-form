ENV['RACK_ENV'] = 'test'

require './app'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature 'Homepage' do

  scenario "should show title" do
    visit '/'
    expect(page).to have_text('Home Page')
  end

  scenario 'should show form' do
    visit '/'
    expect(page).to have_text('Add a thing to the thing list')
    expect(page).to have_text('New Thing')
  end

  scenario 'should allow user to add a thing' do
    visit '/'
    fill_in('New Thing', :with => 'Test')
    click_button('Add')
    expect(page.find('.thing-list')).to have_text('Test')
  end

end
