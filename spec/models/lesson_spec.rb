require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }

  context('#next') do
    it("returns the next instance of the Lesson model") do
      example_section = Section.create({:title => "example section"})
      current_lesson = example_section.lessons.new({:title => 'lesson1', :number => 1})
      next_lesson = example_section.lessons.new({:title => 'lesson2', :number => 2})
      example_section.save()
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context('#previous') do
    it("returns the previous instance of the Lesson model") do
      example_section = Section.create({:title => "example section"})
      last_lesson = example_section.lessons.new({:title => 'lesson1', :number => 1})
      current_lesson = example_section.lessons.new({:title => 'lesson2', :number => 2})
      example_section.save()
      expect(current_lesson.previous).to eq last_lesson
    end
  end
end
