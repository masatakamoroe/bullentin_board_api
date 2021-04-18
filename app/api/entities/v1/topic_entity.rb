module Entities
    module V1
        class TopicEntity < Grape::Entity
            expose :id, :user_id, :title, :text, :created_at
            expose :user, using: Entities::V1::UserEntity
        end
    end
end
