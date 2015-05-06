class User < ActiveRecord::Base
	validates :email, :name, :password, :password_confirmation, presence: true
	has_secure_password

	has_many :reviews
	has_many :products, through: :reviews
end
