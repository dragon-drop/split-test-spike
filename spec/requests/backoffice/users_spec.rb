require "rails_helper"
require "support/user_contexts"

RSpec.describe "Backoffice::Users", type: :request do
  include_context "with user logged in"

  describe "GET /backoffice/users" do
    context "when user is logged in" do
      let(:user) { create(:user) }

      before { sign_in user }

      it "returns successfully" do
        get backoffice_users_path
        expect(response.status).to eq 200
      end
    end

    context "when user is not logged in" do
      it "redirects you to the sign in page" do
        get backoffice_users_path
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
end
