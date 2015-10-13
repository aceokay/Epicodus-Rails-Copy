class Section < ActiveRecord::Base
  belongs_to :chapter
  has_many :lessons
  validates :title, :presence => true
end
