module Resources
    module V1
        class Topics < Grape::API
            resource :topics do
                # http://localhost:3000/api/v1/topics
                desc "topic list"
                get do 
                    present Topic.all, with: Entities::V1::TopicEntity
                end
            end
        end
    end
end