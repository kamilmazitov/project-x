class AdminScope::BaseController < ApplicationController

  before_action :authenticate_admin!
  layout 'admin_scope'
end
