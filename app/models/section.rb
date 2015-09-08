class Section < ActiveRecord::Base
	belongs_to :course
	has_many :lessons

	include RankedModel
	ranks :row_order, :with_same => :course_id
	#
	# def to_param
	# 	"#{id} #{title}".parameterize
	# end
end
