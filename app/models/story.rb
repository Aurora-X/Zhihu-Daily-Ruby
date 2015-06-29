class Story < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :zhihu_id
end
