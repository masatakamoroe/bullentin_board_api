module Entities
    module V1
        class CommentEntity < RootEntity
            expose :user_id, :topic_id, :text
        end
    end
end
