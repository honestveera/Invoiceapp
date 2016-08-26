require 'rails_helper'

RSpec.describe "Scheduletimes", type: :request do
  describe "GET /scheduletimes" do
    it "works! (now write some real specs)" do
      get scheduletimes_path
      expect(response).to have_http_status(200)
    end
  end
end
