require 'rails_helper'

RSpec.describe "Microposts", type: :system do
  it "works! (now write some real specs)" do
    visit microposts_index_url
    file_path = Rails.root.join('spec', 'images', 'octocat.png')
    attach_file('micropost[picture]', file_path)
    click_button "Create Micropost"
    expect(find('img')['src']).to have_content("octocat.png")
  end
end
