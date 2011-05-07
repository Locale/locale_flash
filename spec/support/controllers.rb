module ActionController
  class Base
    attr_accessor :flash

    def initialize
      @flash = {}
    end
  end
end

class UsersController < ActionController::Base
  def edit
    locale_flash(:warning)
  end

  def create
    locale_notice
  end

  def destroy
    locale_alert
  end

private

  def controller_path
    'users'
  end

  def action_name
    'create'
  end
end

module Admin
end

class Admin::UsersController < ActionController::Base
  def show
    locale_alert
  end

  def controller_path
    'admin/users'
  end

  def action_name
    'show'
  end
end