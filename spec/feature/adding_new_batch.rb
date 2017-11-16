require 'rails_helper'

feature 'Manage groups', js: true do


  scenario 'add a new batch' do
    visit groups_path

    fill_in 'Name', with: 'Group99'

    page.execute_script("$('form').submit()")

    fill_in 'Name', with: 'Group100'

    page.execute_script("$('form').submit()")

    fill_in 'Name', with: 'Group101'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Group99')
    expect(page).to have_content('Group100')
    expect(page).to have_content('Group101')
  end
end
