class Lesson < ActiveRecord::Base
	belongs_to :section
	mount_uploader :video, VideoUploader
	#
	# def to_param
	# 	"#{id} #{title}".parameterize
	# end
end
