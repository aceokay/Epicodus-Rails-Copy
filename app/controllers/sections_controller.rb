class SectionsController < ApplicationController
  def show
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
    @lessons = @section.lessons.order(number: :asc)
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save
      redirect_to chapters_path
    else
      render :new
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
  end

  private
  def section_params
    params.require(:section).permit(:title)
  end
end
