module Resources
    module V1
        class Comments < Grape::API
            auth :grape_devise_token_auth, resource_class: :user
            helpers GrapeDeviseTokenAuth::AuthHelpers
            resource :comments do
                # http://localhost:3000/api/v1/comments
                desc 'comment list'
                get do
                    authenticate_user!
                    present Comment.all, with: Entities::V1::CommentEntity
                end

                desc 'returns a comment'
                params do
                    requires :id, type: Integer
                end

                get '/:id' do
                    authenticate_user!
                    comments = Comment.includes(:user)
                    present comments.find(params[:id]), with: Entities::V1::CommentEntity
                end

                desc 'create new comment'
                params do
                    requires :text, type: String
                    requires :topic_id, type: Integer
                end
                post do
                    authenticate_user!
                    current_user.comments.create({
                        text: params[:text],
                        topic_id: params[:topic_id]
                    })
                end
            end
        end
    end
end
