require "rails_helper"

feature "Sign Out" do
  include_context "current admin signed in"

  scenario "Admin signs out" do
    visit "/admin_scope"
    click_link "Sign out"

    expect(page).to have_content("Sign in")
  end
end
