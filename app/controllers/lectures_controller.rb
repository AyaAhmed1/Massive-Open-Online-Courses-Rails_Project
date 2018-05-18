class LecturesController < InheritedResources::Base
    before_action :authenticate_user!
  def upvote 
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_by current_user
   redirect_back(fallback_location: @lecture) 
  end  
  
  def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    redirect_back(fallback_location: @lecture) 
  end
  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end

