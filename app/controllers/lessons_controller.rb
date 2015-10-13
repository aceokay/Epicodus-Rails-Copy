class LessonsController < ApplicationController
  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @next = @lesson.next()
    @previous = @lesson.previous()
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to chapter_section_path(@section, @section)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lesson_path
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to chapter_section_path(@section, @section)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :body, :number)
  end
end
