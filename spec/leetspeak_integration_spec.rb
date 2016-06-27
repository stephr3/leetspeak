require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('leetspeak path', {:type => :feature}) do
  it "processes the user entry and returns it in leetspeak" do
    visit('/')
    fill_in('sentence', :with => 'hello')
    click_button('Submit')
    expect(page).to have_content('h3ll0')
  end
end
