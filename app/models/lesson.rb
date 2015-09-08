class Lesson < ActiveRecord::Base
	belongs_to :section
	mount_uploader :video, VideoUploader

	include RankedModel
	ranks :row_order, :with_same => :section_id

	def to_param
		"#{id} #{title}".parameterize
	end
end
