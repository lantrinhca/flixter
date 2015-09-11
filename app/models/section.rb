class Section < ActiveRecord::Base
	belongs_to :course
	has_many :lessons

	include RankedModel
	ranks :row_order, :with_same => :course_id

	def next_section
		# ? is self.row_order
		section = course.sections.where("row_order > ?", self.row_order).rank(:row_order).first
		return section
	end

	#
	# def to_param
	# 	"#{id} #{title}".parameterize
	# end
end
