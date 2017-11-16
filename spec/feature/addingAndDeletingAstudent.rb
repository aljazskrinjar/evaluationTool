require 'rails_helper'

feature "Current user viewing the list of rooms",js: true do
  before { login_as user }
  let(:group1) { create :group }
  let(:student1) { create :student , group: group1 }
  let(:user)  { create :user, email: "current@user.com" }

   scenario "add student and delete student" do
    visit group_path(group1.id)

    fill_in 'Name', with: 'Michael'

    fill_in 'Surname', with: 'Scott'


    page.execute_script("$('form').submit()")
    expect(page).to have_text("Michael")

    
    page.accept_alert do
      click_link("Delete Student")
    end


    expect(page).to_not have_text("Michael")



  end

end
