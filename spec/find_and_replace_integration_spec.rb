require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('takes three entries and returns a modified string with the designated string replaceing the other designated string') do
    visit('/')
    fill_in('sentence', :with => 'returns true if rock is the rock and rock is the argument')
    fill_in('word', :with => 'rock')
    fill_in('replacement', :with => 'ham')
    click_button('Replace Now!')
    expect(page).to have_content('returns true if rock is the rock and rock is the argument')
    expect(page).to have_content('returns true if ham is the ham and ham is the argument')
  end
end
