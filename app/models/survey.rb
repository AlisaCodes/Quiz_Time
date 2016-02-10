class Survey < ActiveRecord::Base
  has_many :quizzes
  validates :name, :presence => true
end
