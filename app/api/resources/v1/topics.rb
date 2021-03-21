module Resources
    module V1
        class Topics < Grape::API
            auth :grape_devise_token_auth, resource_class: :user
            helpers GrapeDeviseTokenAuth::AuthHelpers
            resource :topics do
                # http://localhost:3000/api/v1/topics
                desc "topic list"
                get do
                    authenticate_user! 
                    present current_user.topics, with: Entities::V1::TopicEntity
                end
            end
        end
    end
end