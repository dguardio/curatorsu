class Mod < ActiveRecord::Base
	  belongs_to :course
	  mount_uploader :image, ImageUploader
	  mount_uploader :document, DocumentUploader

end
