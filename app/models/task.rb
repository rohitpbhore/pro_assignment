class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  
  enum status: { initial: 1, in_progress: 2, done: 3 }
 
  validates :name, :status, :description, presence: true
end
