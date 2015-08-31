class Lesson < ActiveRecord::Base
	belongs_to :section

	def to_param
		"#{id} #{title}".parameterize
	end
end
