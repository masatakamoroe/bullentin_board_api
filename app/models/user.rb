class User < ApplicationRecord
            # Include default devise modules.
            has_many :topics
            has_many :comments
            # Include default devise modules. Others available are:
            devise :database_authenticatable, :registerable,
                   :recoverable, :rememberable, :validatable,
                   :omniauthable, omniauth_providers: [:twitter]
            include DeviseTokenAuth::Concerns::User
end
