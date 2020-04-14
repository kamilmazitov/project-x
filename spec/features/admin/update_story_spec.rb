require "rails_helper"

feature "Update Story" do
  include_context "current admin signed in"
  let(:story) { create :story, published: :true }

  background do
    visit edit_admin_scope_story_path(story)
  end

  scenario "Admin update story" do
    fill_form(:story, :edit, title: "New Title")
    fill_form(:story, :new, content: "Some new content")
    click_on "Save"

    expect(page).to have_content("New Title")
  end
end
