require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('Takes a word from the user and tells them whether it is a palindrome or not') do
    visit('/')
    fill_in('word', :with => "racecar")
    click_button('Check!')
    expect(page).to have_content("true")
  end
end
