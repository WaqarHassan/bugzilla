class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :project_users
  # has_many :bug_users
  has_many :projects, :through => :project_users
  # has_many :bugs, :through => :bug_users
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  enum user_type: [ "Manager","Developer", "QA"] 
  USER_TYPE = ["Manager","Developer","QA"]
  validates :user_type,:presence => {:message => "can't be blank." }
end
