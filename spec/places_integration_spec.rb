require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the places list making process', {:type => :feature}) do
  it('allows the user to create a list of places') do
    visit('/')
    fill_in('City', :with => 'Paris')
    click_button('Add a Place')
    click_on('back to list')
    expect(page).to have_content('Paris')
  end
end
