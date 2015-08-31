class Section < ActiveRecord::Base
	belongs_to :course
	has_many :lessons

	def to_param
		"#{id} #{title}".parameterize
	end
end
