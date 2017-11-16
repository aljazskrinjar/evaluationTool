require 'rails_helper'

feature "Current user viewing the list of rooms",js: true do
  before { login_as user }
  let(:group1) { create :group }
  let(:student1) { create :student , group: group1 }
  let(:user)  { create :user, email: "current@user.com" }

   scenario "logs in" do
    visit group_student_path(group1.id,student1.id)

    fill_in 'Remark', with: 'Some fancy words'

    fill_in 'Value', with: '2'


    page.execute_script("$('form').submit()")
    expect(page).to have_text("2")

    visit group_path(group1.id)
    
      expect(page).to have_text("green")

  end

end
