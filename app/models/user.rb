class User < ApplicationRecord
  has_many :topics
  has_many :comments
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable,:confirmable, :lockable, :timeoutable,
         :omniauthable, omniauth_providers: [:twitter]
end
