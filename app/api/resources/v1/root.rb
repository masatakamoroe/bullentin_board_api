module Resources
    module V1
      class Root < Grape::API
        version 'v1', using: :path
        format :json
        content_type :json, 'application/json'
        mount Resources::V1::Topics
        mount Resources::V1::Comments
      end
    end
  end
