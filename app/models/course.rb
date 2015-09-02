class Course < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	belongs_to :user
	has_many :sections
	has_many :enrollments

	# extend FriendlyId
	# friendly_id :title

	validates :title, :presence => true
	validates :description, :presence => true
	validates :cost, :presence => true, :numericality => { :greater_than_or_equal_to => 0 }

	def free?
		cost.zero?
	end

	def premium?
		! free?
	end

	def to_param
		"#{id} #{title}".parameterize
	end

end
