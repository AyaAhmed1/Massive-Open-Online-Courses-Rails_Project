class CoursesController < InheritedResources::Base
  before_action :authenticate_user!
  
  def show 
    @course= Course.find(params[:id])
    @lecures= Lecture.where(course_id: params[:id])
  end   
  
  private

    def course_params
      params.require(:course).permit(:title)
    end

   
   
end

