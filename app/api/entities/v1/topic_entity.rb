module Entities
    module V1
        class TopicEntity < Grape::Entity
            expose :user_id, :title, :text
        end
    end
end
