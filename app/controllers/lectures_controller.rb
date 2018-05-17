class LecturesController < InheritedResources::Base
  before_action :authenticate_user!

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end

