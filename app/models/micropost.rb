# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Micropost < ActiveRecord::Base
	attr_accessible :content #, :user_id #shouldn't be accesible by outsider
	belongs_to :user

	validates :user_id, presence: true
	validates :content, length: { maximum: 140 }, presence: true

	default_scope order: 'microposts.created_at DESC'

	def self.from_users_followed_by(user)
		#followed_users_ids = user.followed_users_ids
		followed_users_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
		self.where("user_id IN (#{followed_users_ids}) OR user_id = :user_id", user_id: user.id)
	end
end
