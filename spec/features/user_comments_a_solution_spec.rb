# frozen_string_literal: true
require 'rails_helper'

feature 'User comments a solution' do
  scenario 'successfully' do
    solution = create(:solution)
    user = solution.user
    login_as user

    visit solution_path(solution)

    fill_in 'comment[body]', with: 'Abacate triste'
    click_on 'Comentar'

    expect(page).to have_content 'Abacate triste'
  end
end
