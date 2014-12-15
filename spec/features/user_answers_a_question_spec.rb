require 'rails_helper'

feature "User answers a question" do
  #   As a user
  # I want to answer another user's question
  # So that I can help them solve their problem

  # Acceptance Criteria

  # - I must be on the question detail page
  # - I must provide a description that is at least 50 characters long
  # - I must be presented with errors if I fill out the form incorrectly
  it "replies to a question" do
    question_1 = Question.create(title: "I have a question that is at least 40 characters long so I hope this is long enough", description: "I am writing a very long questions that is more than one hundred and fifty characters. What is my question, you may ask? Well, I'll explain it quite succinctly.")
    visit ''
  end
end
