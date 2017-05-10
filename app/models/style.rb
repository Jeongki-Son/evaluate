class Style < ActiveRecord::Base
    belongs_to :fashion
    mount_uploader :photo, PhotoUploader
end
