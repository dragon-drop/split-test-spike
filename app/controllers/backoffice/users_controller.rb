module Backoffice
  class UsersController < BackofficeController
    def index
      @users = User.all
    end
  end
end
