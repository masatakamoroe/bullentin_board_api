module Resources
  module V1
    class Comments < Grape::API
      resource :comments do
        # http://localhost:3000/api/v1/comments
        desc "comment list"
        get do
          present Comment.all
        end
      end
    end
  end
end
