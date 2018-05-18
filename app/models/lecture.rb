class Lecture < ApplicationRecord
    acts_as_commontable
    belongs_to :course
    mount_uploader :attachment, AttachmentUploader
    
end
