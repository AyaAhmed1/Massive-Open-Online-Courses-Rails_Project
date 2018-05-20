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
  def spam
    @lecture = Lecture.find(params[:id])
    current_user.lectures << @lecture
    redirect_to lecture_path(@lecture)
  end  
  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id, :user_id)
    end
end

