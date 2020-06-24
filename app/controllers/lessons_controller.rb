class LessonsController < ApplicationController
  def index
    @q = Lesson.ransack(params[:q])
    @lessons = @q.result.includes(:teacher, :language).only_reservable
  end
end
