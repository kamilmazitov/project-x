require "rails_helper"

feature "Create story" do
  include_context "current admin signed in"

  background do
    visit new_admin_scope_story_path(current_admin)
  end

  scenario "Admin create story" do
    fill_form(:story, :new, title: "Title")
    fill_form(:story, :new, content: "Some content")
    click_on "Save"

    expect(page).to have_content("Title")
  end
end
