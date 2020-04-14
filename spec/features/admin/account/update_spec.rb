require "rails_helper"

feature "Update Account" do
  include_context "current admin signed in"

  background do
    visit edit_admin_registration_path(current_admin)
  end

  scenario "Admin updates account with valid data" do
    attrs = {first_name: "New Name", last_name: "New Surname"}
    fill_form(:admin, :edit, attrs)
    click_on "Update"

    expect(page).to have_content("Your account has been updated successfully.")
  end

  scenario "Admin enters not matched passwords" do
    fill_form(:admin, :edit, password: "qwerty", password_confirmation: "123123")
    click_on "Update"

    expect(page).to have_content("doesn't match Password")
  end
end
