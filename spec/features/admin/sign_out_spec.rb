require "rails_helper"

feature "Sign Out" do
  include_context "current admin signed in"

  background do
    visit admin_scope_root_path
  end

  scenario "Admin signs out" do
    click_link "Sign out"

    expect(page).to have_content("Sign in")
  end
end
