class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {super_admin: 1, manager: 2, developer: 3}

  before_create :create_super_admin

  has_many :tasks
  has_many :projects, through: :tasks 

  # Create first user as a super admin
  def create_super_admin
  	if User.all.blank?
  		self.role = 1
  	end	
  end

  #Check admin role exist or not
  def role?(type)
    self.role == type
  end
end
