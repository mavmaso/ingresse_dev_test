require 'rails_helper'

RSpec.describe 'Users Api', type: :request do
  let!(:user) {create(:user)}
  let(:user_id) { user.id }
  let(:headers) do
    {
      'Accept' => 'application/vnd.ingressdev.v1',
      #Content-Type' => Mime[:json].to_s
    }
  end

  before { host! "api.ingressdev.test" }

  describe 'GET users/:id' do
    before do
      get "/users/#{user_id}", params: {}, headers: headers
    end

    context 'when the user exists' do
      it 'returns the user' do
        user_response = JSON.parse(response.body)
        expect(user_response['id'].to eq(user_id))
      end
    end
  end
end