class Bug < ActiveRecord::Base
  belongs_to :project
  # has_many :users, :through => :bug_users
end
