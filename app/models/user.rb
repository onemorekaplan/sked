class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, # :recoverable
         :rememberable, :trackable, :validatable
  # attr_accessible :title, :body

  # Fix for a recent update to devise.
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :first_name, :last_name, :cal_type, :as => [:default, :admin]

  # 
  validates_presence_of :email, :cal_type, :password, :password_confirmation
end
