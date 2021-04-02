module Entities
    module V1
        class CommentEntity < Grape::Entity
            expose :user_id, :topic_id, :text
        end
    end
end
