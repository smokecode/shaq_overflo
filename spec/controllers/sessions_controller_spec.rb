require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  context "#new" do
    it 'response should be successful' do
      get :new
      expect(response).to be_success
    end
  end
end