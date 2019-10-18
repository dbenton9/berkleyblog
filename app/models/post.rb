class Post < ApplicationRecord
    validates_presence_of :title
    
    mount_uploader :image, PhotoUploader
    mount_uploaders :images, PhotoUploader
end
