class Resume < ApplicationRecord
    mount_uploader :res_attachment, ResAttachmentUploader # Tells rails to use this uploader for this model.
    validates :email, presence: true # Make sure the owner's name is present.
end
