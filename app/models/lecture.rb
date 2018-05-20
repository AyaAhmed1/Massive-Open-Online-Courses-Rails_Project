class Lecture < ApplicationRecord
    acts_as_commontable
    acts_as_votable
    belongs_to :course
    mount_uploader :attachment, AttachmentUploader
    has_and_belongs_to_many :users ,required: false
end
