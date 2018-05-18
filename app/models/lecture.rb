class Lecture < ApplicationRecord
    acts_as_commontable
    acts_as_votable
    belongs_to :course
    mount_uploader :attachment, AttachmentUploader
    
end
