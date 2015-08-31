class Course < ActiveRecord::Base
	belongs_to :user
	has_many :sections
	# extend FriendlyId
	# friendly_id :title

	validates :title, :presence => true
	validates :description, :presence => true
	validates :cost, :presence => true, :numericality => { :greater_than_or_equal_to => 0 }

	def to_param
		"#{id} #{title}".parameterize
	end

end
