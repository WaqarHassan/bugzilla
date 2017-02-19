class Bug < ActiveRecord::Base
  belongs_to :project
  enum bug_type: [ "Feature","Bug"]
  validates :title,:presence => {:message => "Title can't be blank." },
          :uniqueness => {:message => "Title already exists."}
  validates :bug_type,:presence => {:message => "Bug Type can't be blank." }
  validates :status,:presence => {:message => "Status can't be blank." }

  # has_many :users, :through => :bug_users
end
