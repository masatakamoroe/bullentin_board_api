module Resources
    module V1
        class Topics < Grape::API
            resource :topics do
                # http://localhost:3000/api/v1/topics
                desc "topic list"
                get do 
                    present Topic.all
                end
            end
        end
    end
end