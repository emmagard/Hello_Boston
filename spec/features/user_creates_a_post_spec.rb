require 'rails_helper'

feature 'User creates a post' do
    scenario 'successfully' do
      #setup
      other_post = create(:post)
      visit root_path
      #exercise
      click_link 'Add Post'
      fill_in 'Title', with: 'This is it'
      fill_in 'Content', with: 'This is some cool content'
      fill_in 'Url', with: 'http://www.example.com'
      click_button 'Create Post'

      #verify
      within('.posts', text: 'This is it') do
        expect(page).to have_content 'This is some cool content'
        expect(page).to have_content 'http://www.example.com'
      end
      expect(page).to have_content other_post.title
    end
end

