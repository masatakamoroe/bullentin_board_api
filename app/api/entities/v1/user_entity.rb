module Entities
    module V1
        class UserEntity < Grape::Entity
            expose :id, :email, :name
        end
    end
end
