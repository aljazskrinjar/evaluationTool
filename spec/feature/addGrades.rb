require 'rails_helper'

feature "adding grade",js: true do
  before { login_as user }
  let(:group1) { create :group }
  let(:student1) { create :student , group: group1 }
  let(:user)  { create :user, email: "current@user.com" }

   scenario "adds grade" do
    visit group_student_path(group1.id,student1.id)

    fill_in 'Remark', with: 'Some fancy words'




    page.execute_script("$('form').submit()")
    expect(page).to have_text("GREEN")

    visit group_path(group1.id)

      expect(page).to have_text("GREEN")

  end

end
