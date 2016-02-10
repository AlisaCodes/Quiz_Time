class Quiz < ActiveRecord::Base
  belongs_to :survey
  validates :question, :presence => true
end
