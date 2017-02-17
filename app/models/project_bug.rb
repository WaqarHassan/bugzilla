class ProjectBug < ActiveRecord::Base
	belongs_to :project
	belongs_to	:bug
end
