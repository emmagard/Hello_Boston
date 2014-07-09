module SessionHelpers
  def sign_in_as(user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end
