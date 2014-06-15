# == Schema Information
#
# Table name: communities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :text
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  creator_id :integer
#

class Community < ActiveRecord::Base
	validates :name, uniqueness: true
	has_many :participations
	has_many :users, :through => :participations
	default_scope -> { order('created_at DESC') }

end
