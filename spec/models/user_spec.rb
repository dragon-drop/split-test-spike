# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  describe "validation" do
    specify(:aggregate_failures) do
      expect(user).to validate_presence_of(:first_name)
      expect(user).to validate_presence_of(:last_name)
      expect(user).to validate_presence_of(:email)
      expect(user).to validate_presence_of(:password)
    end
  end
end
