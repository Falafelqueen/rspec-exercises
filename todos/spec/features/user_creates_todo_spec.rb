require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in
    create_todo("Buy chips")

    expect(page).to display_todo "Buy chips"
  end
end
