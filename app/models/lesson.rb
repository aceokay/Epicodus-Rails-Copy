class Lesson < ActiveRecord::Base
  validates :title, :presence => true
end
