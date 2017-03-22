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

end
