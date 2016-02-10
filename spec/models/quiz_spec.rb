require 'rails_helper'

describe Quiz do
  it { should validate_presence_of :question }
  it { should belong_to :survey }
end
