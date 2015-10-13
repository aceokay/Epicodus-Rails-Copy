require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }

  context('#next') do
    it("returns the next instance of the Lesson model") do
      current_lesson = Lesson.create({:title => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:title => 'lesson2', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
