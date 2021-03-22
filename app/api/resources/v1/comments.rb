module Resources
    module V1
        class Comments < Grape::API
            auth :grape_devise_token_auth, resource_class: :user
            helpers GrapeDeviseTokenAuth::AuthHelpers
            resource :comments do
                # http://localhost:3000/api/v1/comments
                desc "comment list"
                get do
                    authenticate_user!
                    present current_user.comments, with: Entities::V1::CommentEntity
                end

                desc "create new comment"
                params do
                    requires :text, type: String
                end

                post do
                    authenticate_user!
                    current_user.comments.create({
                        text: params[:text],
                    })
                end
            end
        end
    end
end
