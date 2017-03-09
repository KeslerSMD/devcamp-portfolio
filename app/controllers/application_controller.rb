class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  access all: [:show, :index], user: {except: [:destroy, :edit, :create, :new, :update]}, site_admin: :all

  include DeviseWhitelist
  include SetSource
  include CurrentUser
  include DefaultPageContent
end
