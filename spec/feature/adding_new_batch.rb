require 'rails_helper'

feature 'Manage groups', js: true do

  before { login_as user }
  let(:group1) { create :group }
  let(:student1) { create :student , group: group1 }
  let(:user)  { create :user, email: "current@user.com" }


  scenario 'add a new batch' do
    visit groups_path

    fill_in 'Name', with: '99'

    page.execute_script("$('form').submit()")

    fill_in 'Name', with: '100'

    page.execute_script("$('form').submit()")

    fill_in 'Name', with: '101'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('99')
    expect(page).to have_content('100')
    expect(page).to have_content('101')
  end
end
