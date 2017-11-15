require 'rails_helper'

feature 'Manage groups', js: true do


  scenario 'add a new batch' do
    # Point your browser towards the todo path
    visit groups_path

    # Enter description in the text field
    fill_in 'Name', with: 'Group99'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    fill_in 'Name', with: 'Group100'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    fill_in 'Name', with: 'Group101'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Group99')
    expect(page).to have_content('Group100')
    expect(page).to have_content('Group101')
  end
end
