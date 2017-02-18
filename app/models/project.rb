class Project < ActiveRecord::Base
  has_many :bugs
	# has_and_belongs_to_many :users , join_table: "projects_users"
	has_many  :project_users
	has_many  :users, :through => :project_users
end
