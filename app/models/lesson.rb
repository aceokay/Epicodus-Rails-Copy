class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :presence => true

  def next
    self.class.where("number > ?", number).first
  end

  def previous
    self.class.where("number < ?", number).first
  end
end
