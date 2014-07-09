require 'rails_helper'

feature 'User views manage posts' do
  scenario 'successfully' do
    #setup
    posts = create_list(:post, 5)
    #exercise
    visit root_path
    click_link 'Manage Posts'
    #verify
    posts.each do |post|
      within('.my_posts', text: post.title) do
        expect(page).to have_content post.content
        expect(page).to have_content post.url
      end
    end
  end
end
