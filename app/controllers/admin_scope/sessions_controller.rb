module AdminScope
  class SessionsController < Devise::SessionsController
    layout "admin"
  end
end
