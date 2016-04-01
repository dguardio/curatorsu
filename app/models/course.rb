class Course < ActiveRecord::Base
	belongs_to :curator
	belongs_to :curatorx
	has_many :mods
end
