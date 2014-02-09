class Face < ActiveRecord::Base
validates_presence_of :name, :image
mount_uploader :image, FaceUploaderUploader
end
