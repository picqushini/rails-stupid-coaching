require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    # go to the /ask page
    visit ask_url
    # Make sure the page got rendered and we can read Ask your coach anything
    assert_selector 'p', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test 'asking a question yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'coach is happy if you say I am going to work' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end
end
