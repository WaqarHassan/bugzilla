class Bug < ActiveRecord::Base
	has_many :bug_users
	has_many :project_bugs
	has_many :users, :through => :bug_users
	has_many :projects, :through => :project_bugs
end
