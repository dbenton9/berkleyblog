class Post < ApplicationRecord
    validates_presence_of :title
    has_rich_text :blog_post
    
    mount_uploader :image, PhotoUploader
    mount_uploaders :images, PhotoUploader
end
