require 'rails_helper'

describe Survey do
  it { should validate_presence_of :name }
  it { should have_many :quizzes }
end