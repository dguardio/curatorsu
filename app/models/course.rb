class Course < ActiveRecord::Base
	has_and_belongs_to_many :users
	belongs_to :curator
	has_many :modules, :class_name => "Mod"

end
