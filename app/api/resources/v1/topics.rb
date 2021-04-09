module Resources
    module V1
        class Topics < Grape::API
            auth :grape_devise_token_auth, resource_class: :user
            helpers GrapeDeviseTokenAuth::AuthHelpers
            resource :topics do
                # http://localhost:3000/api/v1/topics
                desc 'topic list'
                get do
                    authenticate_user!
                    topics = Topic.includes(:user)
                    present topics, with: Entities::V1::TopicEntity
                end

                desc 'returns a topic'
                params do
                    requires :id, type: Integer
                end

                get '/:id' do
                    authenticate_user!
                    topic = Topic.includes(:user)
                    present topic.find(params[:id]), with: Entities::V1::TopicEntity
                end

                desc "create new topic"
                params do
                    requires :title, type: String
                    requires :text, type: String
                end
                    
                post do
                    authenticate_user!
                    current_user.topics.create({
                        title: params[:title],
                        text: params[:text],
                        })
                    
                end
            end
        end
    end
end
