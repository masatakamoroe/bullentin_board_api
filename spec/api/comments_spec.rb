require 'rails_helper'

describe Resources::V1::Comments do
  describe 'GET: api/v1/comments' do
    context 'when there is no credential' do
      it 'should return unauthorized error' do
        get '/api/v1/comments'
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when there is a credential' do
      subject { get '/api/v1/comments', headers: headers }
      let(:user) { create(:user) }
      let(:headers) do
        headers = user.create_new_auth_token
        headers['content-type'] = 'application/json'
        headers
      end

      it 'should return empty list if there is no commpent' do
        subject
        expect(response).to have_http_status(:ok)
        expect(json_body).to eq([])
      end

      it 'should return comment list if there are commpents' do
        comments = create_list(:comment, 2, user: user)
        expected_comments = comments.map do |comment|
          { text: comment.text, topic_id: comment.topic.id, user_id: comment.user.id }
        end
        subject
        expect(response).to have_http_status(:ok)
        expect(json_body).to match_array(expected_comments)
      end
    end
  end
end
