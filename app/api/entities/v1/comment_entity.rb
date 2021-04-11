module Entities
    module V1
        class CommentEntity < Grape::Entity
            expose :user_id, :topic_id, :text
            expose :user, using: Entities::V1::UserEntity
        end
    end
end
