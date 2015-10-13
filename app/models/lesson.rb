class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :presence => true

  def next
    Section.find(self.section_id).lessons.where("number > ?", number).first
  end

  def previous
    Section.find(self.section_id).lessons.where("number < ?", number).first
  end
end
