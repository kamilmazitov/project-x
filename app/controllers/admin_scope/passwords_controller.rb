module AdminScope
  class PasswordsController < Devise::PasswordsController
    layout "admin"
  end
end
