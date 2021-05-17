require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit "http://localhost:3000/ask"
    fill_in "question", with: "Hello"
    click_on "Ask me!"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "saying I am going to work! yields a happy response from the coach" do
    visit "http://localhost:3000/ask"
    fill_in "question", with: "I am going to work right now!"
    click_on "Ask me!"

    assert_text "Great!"
    take_screenshot
  end
end
