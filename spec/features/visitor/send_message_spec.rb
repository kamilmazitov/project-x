require "rails_helper"

feature "Send message" do

  scenario "Visitor sends message to email" do
    visit new_message_path
    fill_form(:message, :new, name: "Name")
    fill_form(:message, :new, email: "user@example.com")
    fill_form(:message, :new, message: "Message")
    click_on "Send"
    expect(page).to have_content("Message was successfuly send")
  end
end
