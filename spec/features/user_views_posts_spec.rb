require 'rails_helper'

feature 'User views posts' do
    scenario 'successfully' do
      #setup
      posts = create_list(:post, 8)
      #exercise
      visit root_path
      #verify
      posts.each do |post|
        within('.posts', text: post.title) do
          expect(page).to have_content post.content
          expect(page).to have_content post.url
        end
      end
    end
end
