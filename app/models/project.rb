class Project < ActiveRecord::Base
	has_many :tasks
  validates :name, :description, presence: true

  def status(type)
    tasks.where(status: type).count
  end
end
